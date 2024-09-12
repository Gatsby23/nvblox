/*
Copyright 2022-2023 NVIDIA CORPORATION

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

#include <Eigen/Core>

#include "nvblox/core/color.h"
#include "nvblox/core/time.h"

namespace nvblox {

/// A voxel storing TSDF (truncated signed distance field) values.
/// 用来存储TSDF值的体素数据结构.
struct TsdfVoxel {
  TsdfVoxel() : distance(0.0f), weight(0.0f) {}
  /// Signed projective distance of the voxel from a surface.
  float distance;
  /// How many observations/how confident we are in this observation.
  float weight;
};

/// The freespace voxels and layer including its updating is based on
/// 空闲空间体素的定义.
/// the dynablox paper: https://ieeexplore.ieee.org/document/10218983
struct FreespaceVoxel {
  FreespaceVoxel()
      : last_occupied_timestamp_ms(0),
        consecutive_occupancy_duration_ms(0),
        is_high_confidence_freespace(false) {}
  /// Timestamp in ms when the voxel was last seen occupied.
  /// 最后一次被检测到是占据的时间戳，对应dynablox中的t_o.
  /// Corresponds to t_o in dynablox.
  Time last_occupied_timestamp_ms;
  /// Duration of consecutive occupancy in ms. Used to change voxel from high
  /// confidence freespace back to occupied. Corresponds to t_d in dynablox.
  /// 持续占用时间，用于将体素从高置信度的空闲状态重新变为占用状态，对应于dynablox中的t_d.
  Time consecutive_occupancy_duration_ms;
  /// Whether a voxel belongs to the high confidence free space.
  /// Corresponds to f in dynablox.
  /// 体素是否属于高置信度的空闲空间，对应于dynablox中的f.
  bool is_high_confidence_freespace;
};

/// Voxels that stores the distance and full direction to the nearest surface.
struct EsdfVoxel {
  EsdfVoxel()
      : squared_distance_vox(0.0f),
        parent_direction(Eigen::Vector3i::Zero()),
        is_inside(false),
        observed(false),
        is_site(false) {}
  // TODO(helen): optimize the memory layout here.
  /// Cached squared distance towards the parent.
  float squared_distance_vox;
  /// Direction towards the parent, *in units of voxels*.
  Eigen::Vector3i parent_direction;
  /// Whether this voxel is inside the surface or not.
  bool is_inside;
  /// Whether this voxel has been observed.
  bool observed;
  /// Whether this voxel is a "site": i.e., near the zero-crossing and is
  /// eligible to be considered a parent.
  bool is_site;
};

/// Voxel that stores the color near the surface.
struct ColorVoxel {
  ColorVoxel() : color(Color::Gray()), weight(0.0f) {}
  /// The color!
  Color color;
  /// How many observations/how confident we are in this observation.
  float weight;
};

struct OccupancyVoxel {
  OccupancyVoxel() : log_odds(0.0f) {}
  float log_odds;
};

}  // namespace nvblox
