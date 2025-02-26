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


module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          # Settings related to speech recognition.
          # @!attribute [rw] enable_speech_adaptation
          #   @return [::Boolean]
          #     Whether to use speech adaptation for speech recognition.
          class SpeechToTextSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Agents are best described as Natural Language Understanding (NLU) modules
          # that transform user requests into actionable data. You can include agents
          # in your app, product, or service to determine user intent and respond to the
          # user in a natural way.
          #
          # After you create an agent, you can add
          # {::Google::Cloud::Dialogflow::CX::V3::Intent Intents}, [Entity
          # Types][google.cloud.dialogflow.cx.v3.EntityType],
          # {::Google::Cloud::Dialogflow::CX::V3::Flow Flows},
          # {::Google::Cloud::Dialogflow::CX::V3::Fulfillment Fulfillments},
          # {::Google::Cloud::Dialogflow::CX::V3::Webhook Webhooks}, and so on to manage the
          # conversation flows..
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique identifier of the agent.
          #     Required for the
          #     {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#update_agent Agents.UpdateAgent}
          #     method.
          #     {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#create_agent Agents.CreateAgent}
          #     populates the name automatically.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the agent, unique within the location.
          # @!attribute [rw] default_language_code
          #   @return [::String]
          #     Required. Immutable. The default language of the agent as a language tag.
          #     See [Language
          #     Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     for a list of the currently supported language codes.
          #     This field cannot be set by the
          #     {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#update_agent Agents.UpdateAgent}
          #     method.
          # @!attribute [rw] supported_language_codes
          #   @return [::Array<::String>]
          #     The list of all languages supported by the agent (except for the
          #     `default_language_code`).
          # @!attribute [rw] time_zone
          #   @return [::String]
          #     Required. The time zone of the agent from the [time zone
          #     database](https://www.iana.org/time-zones), e.g., America/New_York,
          #     Europe/Paris.
          # @!attribute [rw] description
          #   @return [::String]
          #     The description of the agent. The maximum length is 500 characters. If
          #     exceeded, the request is rejected.
          # @!attribute [rw] avatar_uri
          #   @return [::String]
          #     The URI of the agent's avatar. Avatars are used throughout the Dialogflow
          #     console and in the self-hosted [Web
          #     Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
          #     integration.
          # @!attribute [rw] speech_to_text_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::SpeechToTextSettings]
          #     Speech recognition related settings.
          # @!attribute [rw] start_flow
          #   @return [::String]
          #     Immutable. Name of the start flow in this agent. A start flow will be
          #     automatically created when the agent is created, and can only be deleted by
          #     deleting the agent. Format: `projects/<Project ID>/locations/<Location
          #     ID>/agents/<Agent ID>/flows/<Flow ID>`.
          # @!attribute [rw] security_settings
          #   @return [::String]
          #     Name of the
          #     {::Google::Cloud::Dialogflow::CX::V3::SecuritySettings SecuritySettings}
          #     reference for the agent. Format: `projects/<Project ID>/locations/<Location
          #     ID>/securitySettings/<Security Settings ID>`.
          # @!attribute [rw] enable_stackdriver_logging
          #   @return [::Boolean]
          #     Indicates if stackdriver logging is enabled for the agent.
          #     Please use
          #     {::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings::LoggingSettings agent.advanced_settings}
          #     instead.
          # @!attribute [rw] enable_spell_correction
          #   @return [::Boolean]
          #     Indicates if automatic spell correction is enabled in detect intent
          #     requests.
          # @!attribute [rw] locked
          #   @return [::Boolean]
          #     Indicates whether the agent is locked for changes. If the agent is locked,
          #     modifications to the agent will be rejected except for [RestoreAgent][].
          # @!attribute [rw] advanced_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings]
          #     Hierarchical advanced settings for this agent. The settings exposed at the
          #     lower level overrides the settings exposed at the higher level.
          # @!attribute [rw] text_to_speech_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::TextToSpeechSettings]
          #     Settings on instructing the speech synthesizer on how to generate the
          #     output audio content.
          class Agent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#list_agents Agents.ListAgents}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The location to list all agents for.
          #     Format: `projects/<Project ID>/locations/<Location ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListAgentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#list_agents Agents.ListAgents}.
          # @!attribute [rw] agents
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Agent>]
          #     The list of agents. There will be a maximum number of items returned based
          #     on the page_size field in the request.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListAgentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#get_agent Agents.GetAgent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the agent.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          class GetAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#create_agent Agents.CreateAgent}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The location to create a agent for.
          #     Format: `projects/<Project ID>/locations/<Location ID>`.
          # @!attribute [rw] agent
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Agent]
          #     Required. The agent to create.
          class CreateAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#update_agent Agents.UpdateAgent}.
          # @!attribute [rw] agent
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Agent]
          #     Required. The agent to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The mask to control which fields get updated. If the mask is not present,
          #     all fields will be updated.
          class UpdateAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#delete_agent Agents.DeleteAgent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the agent to delete.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          class DeleteAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#export_agent Agents.ExportAgent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the agent to export.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] agent_uri
          #   @return [::String]
          #     Optional. The [Google Cloud
          #     Storage](https://cloud.google.com/storage/docs/) URI to export the agent
          #     to. The format of this URI must be `gs://<bucket-name>/<object-name>`. If
          #     left unspecified, the serialized agent is returned inline.
          #
          #     Dialogflow performs a write operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have write permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          # @!attribute [rw] data_format
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ExportAgentRequest::DataFormat]
          #     Optional. The data format of the exported agent. If not specified, `BLOB`
          #     is assumed.
          # @!attribute [rw] environment
          #   @return [::String]
          #     Optional. Environment name. If not set, draft environment is assumed.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          class ExportAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Data format of the exported agent.
            module DataFormat
              # Unspecified format.
              DATA_FORMAT_UNSPECIFIED = 0

              # Agent content will be exported as raw bytes.
              BLOB = 1

              # Agent content will be exported in JSON Package format.
              JSON_PACKAGE = 4
            end
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#export_agent Agents.ExportAgent}.
          # @!attribute [rw] agent_uri
          #   @return [::String]
          #     The URI to a file containing the exported agent. This field is populated
          #     only if `agent_uri` is specified in
          #     {::Google::Cloud::Dialogflow::CX::V3::ExportAgentRequest ExportAgentRequest}.
          # @!attribute [rw] agent_content
          #   @return [::String]
          #     Uncompressed raw byte content for agent.
          class ExportAgentResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#restore_agent Agents.RestoreAgent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the agent to restore into.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] agent_uri
          #   @return [::String]
          #     The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI
          #     to restore agent from. The format of this URI must be
          #     `gs://<bucket-name>/<object-name>`.
          #
          #     Dialogflow performs a read operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have read permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          # @!attribute [rw] agent_content
          #   @return [::String]
          #     Uncompressed raw byte content for agent.
          # @!attribute [rw] restore_option
          #   @return [::Google::Cloud::Dialogflow::CX::V3::RestoreAgentRequest::RestoreOption]
          #     Agent restore mode. If not specified, `KEEP` is assumed.
          class RestoreAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Restore option.
            module RestoreOption
              # Unspecified. Treated as KEEP.
              RESTORE_OPTION_UNSPECIFIED = 0

              # Always respect the settings from the exported agent file. It may cause
              # a restoration failure if some settings (e.g. model type) are not
              # supported in the target agent.
              KEEP = 1

              # Fallback to default settings if some settings are not supported in the
              # target agent.
              FALLBACK = 2
            end
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#validate_agent Agents.ValidateAgent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The agent to validate.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     If not specified, the agent's default language is used.
          class ValidateAgentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#get_agent_validation_result Agents.GetAgentValidationResult}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The agent name.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/validationResult`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     If not specified, the agent's default language is used.
          class GetAgentValidationResultRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Agents::Client#get_agent_validation_result Agents.GetAgentValidationResult}.
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique identifier of the agent validation result.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/validationResult`.
          # @!attribute [rw] flow_validation_results
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::FlowValidationResult>]
          #     Contains all flow validation results.
          class AgentValidationResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
