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

# [START eventarcpublishing_v1_generated_Publisher_PublishChannelConnectionEvents_sync]
require "google/cloud/eventarc/publishing/v1"

##
# Snippet for the publish_channel_connection_events call in the Publisher service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Eventarc::Publishing::V1::Publisher::Client#publish_channel_connection_events.
# It may require modification in order to execute successfully.
#
def publish_channel_connection_events
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Eventarc::Publishing::V1::Publisher::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest.new

  # Call the publish_channel_connection_events method.
  result = client.publish_channel_connection_events request

  # The returned object is of type Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsResponse.
  p result
end
# [END eventarcpublishing_v1_generated_Publisher_PublishChannelConnectionEvents_sync]
