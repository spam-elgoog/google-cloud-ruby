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

# [START webrisk_v1_generated_WebRiskService_CreateSubmission_sync]
require "google/cloud/web_risk/v1"

##
# Snippet for the create_submission call in the WebRiskService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::WebRisk::V1::WebRiskService::Client#create_submission. It may
# require modification in order to execute successfully.
#
def create_submission
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::WebRisk::V1::WebRiskService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::WebRisk::V1::CreateSubmissionRequest.new

  # Call the create_submission method.
  result = client.create_submission request

  # The returned object is of type Google::Cloud::WebRisk::V1::Submission.
  p result
end
# [END webrisk_v1_generated_WebRiskService_CreateSubmission_sync]
