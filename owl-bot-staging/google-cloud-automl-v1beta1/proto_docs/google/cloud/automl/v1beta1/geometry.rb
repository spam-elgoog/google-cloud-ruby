# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AutoML
      module V1beta1
        # A vertex represents a 2D point in the image.
        # The normalized vertex coordinates are between 0 to 1 fractions relative to
        # the original plane (image, video). E.g. if the plane (e.g. whole image) would
        # have size 10 x 20 then a point with normalized coordinates (0.1, 0.3) would
        # be at the position (1, 6) on that plane.
        # @!attribute [rw] x
        #   @return [::Float]
        #     Required. Horizontal coordinate.
        # @!attribute [rw] y
        #   @return [::Float]
        #     Required. Vertical coordinate.
        class NormalizedVertex
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A bounding polygon of a detected object on a plane.
        # On output both vertices and normalized_vertices are provided.
        # The polygon is formed by connecting vertices in the order they are listed.
        # @!attribute [rw] normalized_vertices
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::NormalizedVertex>]
        #     Output only . The bounding polygon normalized vertices.
        class BoundingPoly
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
