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

# [START analyticsadmin_v1alpha_generated_AnalyticsAdminService_CreateAccessBinding_sync]
require "google/analytics/admin/v1alpha"

##
# Snippet for the create_access_binding call in the AnalyticsAdminService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client#create_access_binding.
# It may require modification in order to execute successfully.
#
def create_access_binding
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Analytics::Admin::V1alpha::CreateAccessBindingRequest.new

  # Call the create_access_binding method.
  result = client.create_access_binding request

  # The returned object is of type Google::Analytics::Admin::V1alpha::AccessBinding.
  p result
end
# [END analyticsadmin_v1alpha_generated_AnalyticsAdminService_CreateAccessBinding_sync]
