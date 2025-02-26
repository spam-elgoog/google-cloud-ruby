# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# [START cloudasset_v1_generated_AssetService_AnalyzeOrgPolicyGovernedContainers_sync]
require "google/cloud/asset/v1"

##
# Snippet for the analyze_org_policy_governed_containers call in the AssetService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Asset::V1::AssetService::Client#analyze_org_policy_governed_containers.
# It may require modification in order to execute successfully.
#
def analyze_org_policy_governed_containers
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Asset::V1::AssetService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Asset::V1::AnalyzeOrgPolicyGovernedContainersRequest.new

  # Call the analyze_org_policy_governed_containers method.
  result = client.analyze_org_policy_governed_containers request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Asset::V1::AnalyzeOrgPolicyGovernedContainersResponse::GovernedContainer.
    p item
  end
end
# [END cloudasset_v1_generated_AssetService_AnalyzeOrgPolicyGovernedContainers_sync]
