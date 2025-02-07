# frozen_string_literal: true

# Copyright 2020 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/dialogflow/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dialogflow do |config|
  config.add_field! :endpoint,      "dialogflow.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Dialogflow
      ##
      # Create a new client object for Agents.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Agents::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Agents-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Agents service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Agents
      #
      # Service for managing Agents.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.agents version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Agents)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Contexts.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Contexts::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Contexts-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Contexts service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Contexts
      #
      # Service for managing Contexts.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.contexts version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Contexts)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Intents.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Intents::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Intents-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Intents service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Intents
      #
      # Service for managing Intents.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.intents version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Intents)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for EntityTypes.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::EntityTypes::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-EntityTypes-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the EntityTypes service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About EntityTypes
      #
      # Service for managing EntityTypes.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.entity_types version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:EntityTypes)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SessionEntityTypes.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::SessionEntityTypes::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-SessionEntityTypes-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SessionEntityTypes service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About SessionEntityTypes
      #
      # Service for managing
      # SessionEntityTypes.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.session_entity_types version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:SessionEntityTypes)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Sessions.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Sessions::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Sessions-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Sessions service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Sessions
      #
      # A service used for session interactions.
      #
      # For more information, see the [API interactions
      # guide](https://cloud.google.com/dialogflow/docs/api-overview).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.sessions version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Sessions)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Participants.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Participants::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Participants-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Participants service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Participants
      #
      # Service for managing Participants.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.participants version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Participants)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for AnswerRecords.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::AnswerRecords::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-AnswerRecords-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the AnswerRecords service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About AnswerRecords
      #
      # Service for managing
      # AnswerRecords.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.answer_records version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:AnswerRecords)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Conversations.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Conversations::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Conversations-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Conversations service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Conversations
      #
      # Service for managing
      # Conversations.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.conversations version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Conversations)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ConversationDatasets.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::ConversationDatasets::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-ConversationDatasets-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ConversationDatasets service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ConversationDatasets
      #
      # Conversation datasets.
      #
      # Conversation datasets contain raw conversation files and their
      # customizable metadata that can be used for model training.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.conversation_datasets version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:ConversationDatasets)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ConversationModels.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::ConversationModels::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-ConversationModels-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ConversationModels service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ConversationModels
      #
      # Manages a collection of models for human agent assistant.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.conversation_models version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:ConversationModels)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ConversationProfiles.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::ConversationProfiles::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-ConversationProfiles-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ConversationProfiles service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ConversationProfiles
      #
      # Service for managing
      # ConversationProfiles.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.conversation_profiles version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:ConversationProfiles)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Documents.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Documents::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Documents-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Documents service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Documents
      #
      # Service for managing knowledge
      # Documents.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.documents version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Documents)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Fulfillments.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Fulfillments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Fulfillments-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Fulfillments service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Fulfillments
      #
      # Service for managing Fulfillments.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.fulfillments version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Fulfillments)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Environments.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Environments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Environments-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Environments service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Environments
      #
      # Service for managing Environments.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.environments version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Environments)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for KnowledgeBases.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::KnowledgeBases::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-KnowledgeBases-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the KnowledgeBases service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About KnowledgeBases
      #
      # Service for managing
      # KnowledgeBases.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.knowledge_bases version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:KnowledgeBases)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Versions.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Versions::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-v2/latest/Google-Cloud-Dialogflow-V2-Versions-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Versions service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About Versions
      #
      # Service for managing Versions.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.versions version: :v2, transport: :grpc, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dialogflow.const_get(package_name).const_get(:Versions)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-dialogflow library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.dialogflow if block_given?

        ::Google::Cloud.configure.dialogflow
      end
    end
  end
end

helper_path = ::File.join __dir__, "dialogflow", "helpers.rb"
require "google/cloud/dialogflow/helpers" if ::File.file? helper_path
