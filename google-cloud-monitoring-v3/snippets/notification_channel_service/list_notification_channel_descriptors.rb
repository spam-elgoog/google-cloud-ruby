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

# [START monitoring_v3_generated_NotificationChannelService_ListNotificationChannelDescriptors_sync]
require "google/cloud/monitoring/v3"

##
# Snippet for the list_notification_channel_descriptors call in the NotificationChannelService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Monitoring::V3::NotificationChannelService::Client#list_notification_channel_descriptors.
# It may require modification in order to execute successfully.
#
def list_notification_channel_descriptors
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Monitoring::V3::NotificationChannelService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsRequest.new

  # Call the list_notification_channel_descriptors method.
  result = client.list_notification_channel_descriptors request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Monitoring::V3::NotificationChannelDescriptor.
    p item
  end
end
# [END monitoring_v3_generated_NotificationChannelService_ListNotificationChannelDescriptors_sync]
