# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START vmwareengine_v1_generated_VmwareEngine_ShowVcenterCredentials_sync]
require "google/cloud/vmware_engine/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::VmwareEngine::V1::VmwareEngine::Client#show_vcenter_credentials
#
def show_vcenter_credentials
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::VmwareEngine::V1::VmwareEngine::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::VmwareEngine::V1::ShowVcenterCredentialsRequest.new

  # Call the show_vcenter_credentials method.
  result = client.show_vcenter_credentials request

  # The returned object is of type Google::Cloud::VmwareEngine::V1::Credentials.
  p result
end
# [END vmwareengine_v1_generated_VmwareEngine_ShowVcenterCredentials_sync]
