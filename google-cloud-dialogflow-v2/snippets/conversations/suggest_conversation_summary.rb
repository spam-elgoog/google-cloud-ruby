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

# [START dialogflow_v2_generated_Conversations_SuggestConversationSummary_sync]
require "google/cloud/dialogflow/v2"

##
# Snippet for the suggest_conversation_summary call in the Conversations service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::V2::Conversations::Client#suggest_conversation_summary.
# It may require modification in order to execute successfully.
#
def suggest_conversation_summary
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::V2::Conversations::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dialogflow::V2::SuggestConversationSummaryRequest.new

  # Call the suggest_conversation_summary method.
  result = client.suggest_conversation_summary request

  # The returned object is of type Google::Cloud::Dialogflow::V2::SuggestConversationSummaryResponse.
  p result
end
# [END dialogflow_v2_generated_Conversations_SuggestConversationSummary_sync]
