/*
Copyright 2022 NVIDIA CORPORATION

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
#pragma once

#include "nvblox/core/indexing.h"

namespace nvblox {

__host__ __device__ inline int signum(float x) {
  return (x > 0.0f) ? 1 : ((x < 0.0f) ? -1 : 0);
}

/// 默认scale是1，代表不进行放缩.
inline RayCaster::RayCaster(const Vector3f& origin, const Vector3f& destination,
                            float scale)
    : scale_(scale) {
  /// raycast的起点和终点进行方所.
  Vector3f start_scaled = origin / scale_;
  Vector3f end_scaled = destination / scale_;
  /// 得到起始位置在Layer中的block idx.
  current_index_ = getBlockIndexFromPositionInLayer(scale, origin);
  /// 得到终点位置在Layer中的block idx.->整数.
  const Index3D end_index =
      getBlockIndexFromPositionInLayer(scale, destination);
  /// 得到两个位置的idx差异.
  const Index3D diff_index = end_index - current_index_;

  current_step_ = 0;
  /// 对差异化索引中的当中每个元素求绝对值的和->判断出有多少个1，也就是走了多少步.
  ray_length_in_steps_ = diff_index.cwiseAbs().sum();
  /// 放缩后的ray方向.
  const Vector3f ray_scaled = end_scaled - start_scaled;
  // 依据方向判断是1，-1还是0.
  ray_step_signs_ = Index3D(signum(ray_scaled.x()), signum(ray_scaled.y()),
                            signum(ray_scaled.z()));
  // 这里保证沿着射线的方向进行正向偏移，不会反向来回移动.
  const Index3D corrected_step = ray_step_signs_.cwiseMax(0);
  // 当前位置离初始start已经偏移了多少.
  const Vector3f start_scaled_shifted =
      start_scaled - current_index_.cast<float>();
  // 还有多少距离会碰到墙壁.
  Vector3f distance_to_boundaries(corrected_step.cast<float>() -
                                  start_scaled_shifted);

  // NaNs are fine in the next 2 lines.
  // cwiseQuotient->逐元素相除.
  t_to_next_boundary_ = distance_to_boundaries.cwiseQuotient(ray_scaled);

  // Distance to cross one grid cell along the ray in t.
  // Same as absolute inverse value of delta_coord.
  // 计算沿射线穿过每一个体素格需要走的距离.
  t_step_size_ = ray_step_signs_.cast<float>().cwiseQuotient(ray_scaled);
}

inline bool RayCaster::nextRayIndex(Index3D* ray_index) {
  if (current_step_++ > ray_length_in_steps_) {
    return false;
  }

  DCHECK(ray_index != nullptr);
  *ray_index = current_index_;

  int t_min_idx;
  // 找到当中的最小值.
  t_to_next_boundary_.minCoeff(&t_min_idx);
  current_index_[t_min_idx] += ray_step_signs_[t_min_idx];
  t_to_next_boundary_[t_min_idx] += t_step_size_[t_min_idx];

  return true;
}

inline bool RayCaster::nextRayPositionScaled(Vector3f* ray_position) {
  Index3D ray_index;
  bool success = nextRayIndex(&ray_index);
  *ray_position = scale_ * ray_index.cast<float>();
  return success;
}

inline void RayCaster::getAllIndices(std::vector<Index3D>* indices) {
  indices->clear();
  Index3D next_index;
  while (nextRayIndex(&next_index)) {
    indices->push_back(next_index);
  }
}

}  // namespace nvblox