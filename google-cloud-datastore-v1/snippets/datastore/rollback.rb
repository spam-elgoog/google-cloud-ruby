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

# [START datastore_v1_generated_Datastore_Rollback_sync]
require "google/cloud/datastore/v1"

##
# Snippet for the rollback call in the Datastore service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Datastore::V1::Datastore::Client#rollback. It may require
# modification in order to execute successfully.
#
def rollback
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Datastore::V1::Datastore::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Datastore::V1::RollbackRequest.new

  # Call the rollback method.
  result = client.rollback request

  # The returned object is of type Google::Cloud::Datastore::V1::RollbackResponse.
  p result
end
# [END datastore_v1_generated_Datastore_Rollback_sync]
