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

# [START beyondcorp_v1_generated_AppConnectorsService_ListAppConnectors_sync]
require "google/cloud/beyond_corp/app_connectors/v1"

##
# Snippet for the list_app_connectors call in the AppConnectorsService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client#list_app_connectors.
# It may require modification in order to execute successfully.
#
def list_app_connectors
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsRequest.new

  # Call the list_app_connectors method.
  result = client.list_app_connectors request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector.
    p item
  end
end
# [END beyondcorp_v1_generated_AppConnectorsService_ListAppConnectors_sync]
