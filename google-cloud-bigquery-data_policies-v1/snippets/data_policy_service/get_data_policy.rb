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

# [START bigquerydatapolicy_v1_generated_DataPolicyService_GetDataPolicy_sync]
require "google/cloud/bigquery/data_policies/v1"

##
# Snippet for the get_data_policy call in the DataPolicyService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client#get_data_policy.
# It may require modification in order to execute successfully.
#
def get_data_policy
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::DataPolicies::V1::GetDataPolicyRequest.new

  # Call the get_data_policy method.
  result = client.get_data_policy request

  # The returned object is of type Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy.
  p result
end
# [END bigquerydatapolicy_v1_generated_DataPolicyService_GetDataPolicy_sync]
