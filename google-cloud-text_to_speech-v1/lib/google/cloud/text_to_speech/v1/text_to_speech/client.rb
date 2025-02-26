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

require "google/cloud/errors"
require "google/cloud/texttospeech/v1/cloud_tts_pb"

module Google
  module Cloud
    module TextToSpeech
      module V1
        module TextToSpeech
          ##
          # Client for the TextToSpeech service.
          #
          # Service that implements Google Cloud Text-to-Speech API.
          #
          class Client
            include Paths

            # @private
            attr_reader :text_to_speech_stub

            ##
            # Configure the TextToSpeech Client class.
            #
            # See {::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all TextToSpeech clients
            #   ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "TextToSpeech", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 300.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the TextToSpeech Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new TextToSpeech client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the TextToSpeech client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/texttospeech/v1/cloud_tts_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @text_to_speech_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Returns a list of Voice supported for synthesis.
            #
            # @overload list_voices(request, options = nil)
            #   Pass arguments to `list_voices` via a request object, either of type
            #   {::Google::Cloud::TextToSpeech::V1::ListVoicesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::TextToSpeech::V1::ListVoicesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_voices(language_code: nil)
            #   Pass arguments to `list_voices` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param language_code [::String]
            #     Optional. Recommended.
            #     [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
            #     If not specified, the API will return all supported voices.
            #     If specified, the ListVoices call will only return voices that can be used
            #     to synthesize this language_code. For example, if you specify `"en-NZ"`,
            #     all `"en-NZ"` voices will be returned. If you specify `"no"`, both
            #     `"no-\*"` (Norwegian) and `"nb-\*"` (Norwegian Bokmal) voices will be
            #     returned.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::TextToSpeech::V1::ListVoicesResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::TextToSpeech::V1::ListVoicesResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/text_to_speech/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::TextToSpeech::V1::ListVoicesRequest.new
            #
            #   # Call the list_voices method.
            #   result = client.list_voices request
            #
            #   # The returned object is of type Google::Cloud::TextToSpeech::V1::ListVoicesResponse.
            #   p result
            #
            def list_voices request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::TextToSpeech::V1::ListVoicesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_voices.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::TextToSpeech::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.list_voices.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_voices.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @text_to_speech_stub.call_rpc :list_voices, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Synthesizes speech synchronously: receive results after all text input
            # has been processed.
            #
            # @overload synthesize_speech(request, options = nil)
            #   Pass arguments to `synthesize_speech` via a request object, either of type
            #   {::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload synthesize_speech(input: nil, voice: nil, audio_config: nil)
            #   Pass arguments to `synthesize_speech` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param input [::Google::Cloud::TextToSpeech::V1::SynthesisInput, ::Hash]
            #     Required. The Synthesizer requires either plain text or SSML as input.
            #   @param voice [::Google::Cloud::TextToSpeech::V1::VoiceSelectionParams, ::Hash]
            #     Required. The desired voice of the synthesized audio.
            #   @param audio_config [::Google::Cloud::TextToSpeech::V1::AudioConfig, ::Hash]
            #     Required. The configuration of the synthesized audio.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/text_to_speech/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest.new
            #
            #   # Call the synthesize_speech method.
            #   result = client.synthesize_speech request
            #
            #   # The returned object is of type Google::Cloud::TextToSpeech::V1::SynthesizeSpeechResponse.
            #   p result
            #
            def synthesize_speech request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.synthesize_speech.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::TextToSpeech::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.synthesize_speech.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.synthesize_speech.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @text_to_speech_stub.call_rpc :synthesize_speech, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the TextToSpeech API.
            #
            # This class represents the configuration for TextToSpeech,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_voices to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_voices.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_voices.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"texttospeech.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "texttospeech.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the TextToSpeech API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_voices`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_voices
                ##
                # RPC-specific configuration for `synthesize_speech`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :synthesize_speech

                # @private
                def initialize parent_rpcs = nil
                  list_voices_config = parent_rpcs.list_voices if parent_rpcs.respond_to? :list_voices
                  @list_voices = ::Gapic::Config::Method.new list_voices_config
                  synthesize_speech_config = parent_rpcs.synthesize_speech if parent_rpcs.respond_to? :synthesize_speech
                  @synthesize_speech = ::Gapic::Config::Method.new synthesize_speech_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
