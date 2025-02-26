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

require "google/cloud/errors"
require "google/cloud/gkeconnect/gateway/v1beta1/gateway_pb"

module Google
  module Cloud
    module GkeConnect
      module Gateway
        module V1beta1
          module GatewayService
            ##
            # Client for the GatewayService service.
            #
            # Gateway service is a public API which works as a Kubernetes resource model
            # proxy between end users and registered Kubernetes clusters. Each RPC in this
            # service matches with an HTTP verb. End user will initiate kubectl commands
            # against the Gateway service, and Gateway service will forward user requests
            # to clusters.
            #
            class Client
              # @private
              attr_reader :gateway_service_stub

              ##
              # Configure the GatewayService Client class.
              #
              # See {::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all GatewayService clients
              #   ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "GkeConnect", "Gateway", "V1beta1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the GatewayService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client::Configuration}
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
              # Create a new GatewayService client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the GatewayService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/cloud/gkeconnect/gateway/v1beta1/gateway_services_pb"

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

                @gateway_service_stub = ::Gapic::ServiceStub.new(
                  ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Stub,
                  credentials:  credentials,
                  endpoint:     @config.endpoint,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors
                )
              end

              # Service calls

              ##
              # GetResource performs an HTTP GET request on the Kubernetes API Server.
              #
              # @overload get_resource(request, options = nil)
              #   Pass arguments to `get_resource` via a request object, either of type
              #   {::Google::Api::HttpBody} or an equivalent Hash.
              #
              #   @param request [::Google::Api::HttpBody, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload get_resource(content_type: nil, data: nil, extensions: nil)
              #   Pass arguments to `get_resource` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param content_type [::String]
              #     The HTTP Content-Type header value specifying the content type of the body.
              #   @param data [::String]
              #     The HTTP request/response body as raw binary.
              #   @param extensions [::Array<::Google::Protobuf::Any, ::Hash>]
              #     Application specific response metadata. Must be set in the first response
              #     for streaming APIs.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Api::HttpBody]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/gke_connect/gateway/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Api::HttpBody.new
              #
              #   # Call the get_resource method.
              #   result = client.get_resource request
              #
              #   # The returned object is of type Google::Api::HttpBody.
              #   p result
              #
              def get_resource request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Api::HttpBody

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.get_resource.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::GkeConnect::Gateway::V1beta1::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_resource.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.get_resource.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @gateway_service_stub.call_rpc :get_resource, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # PostResource performs an HTTP POST on the Kubernetes API Server.
              #
              # @overload post_resource(request, options = nil)
              #   Pass arguments to `post_resource` via a request object, either of type
              #   {::Google::Api::HttpBody} or an equivalent Hash.
              #
              #   @param request [::Google::Api::HttpBody, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload post_resource(content_type: nil, data: nil, extensions: nil)
              #   Pass arguments to `post_resource` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param content_type [::String]
              #     The HTTP Content-Type header value specifying the content type of the body.
              #   @param data [::String]
              #     The HTTP request/response body as raw binary.
              #   @param extensions [::Array<::Google::Protobuf::Any, ::Hash>]
              #     Application specific response metadata. Must be set in the first response
              #     for streaming APIs.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Api::HttpBody]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/gke_connect/gateway/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Api::HttpBody.new
              #
              #   # Call the post_resource method.
              #   result = client.post_resource request
              #
              #   # The returned object is of type Google::Api::HttpBody.
              #   p result
              #
              def post_resource request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Api::HttpBody

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.post_resource.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::GkeConnect::Gateway::V1beta1::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.post_resource.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.post_resource.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @gateway_service_stub.call_rpc :post_resource, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # DeleteResource performs an HTTP DELETE on the Kubernetes API Server.
              #
              # @overload delete_resource(request, options = nil)
              #   Pass arguments to `delete_resource` via a request object, either of type
              #   {::Google::Api::HttpBody} or an equivalent Hash.
              #
              #   @param request [::Google::Api::HttpBody, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload delete_resource(content_type: nil, data: nil, extensions: nil)
              #   Pass arguments to `delete_resource` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param content_type [::String]
              #     The HTTP Content-Type header value specifying the content type of the body.
              #   @param data [::String]
              #     The HTTP request/response body as raw binary.
              #   @param extensions [::Array<::Google::Protobuf::Any, ::Hash>]
              #     Application specific response metadata. Must be set in the first response
              #     for streaming APIs.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Api::HttpBody]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/gke_connect/gateway/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Api::HttpBody.new
              #
              #   # Call the delete_resource method.
              #   result = client.delete_resource request
              #
              #   # The returned object is of type Google::Api::HttpBody.
              #   p result
              #
              def delete_resource request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Api::HttpBody

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.delete_resource.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::GkeConnect::Gateway::V1beta1::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_resource.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.delete_resource.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @gateway_service_stub.call_rpc :delete_resource, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # PutResource performs an HTTP PUT on the Kubernetes API Server.
              #
              # @overload put_resource(request, options = nil)
              #   Pass arguments to `put_resource` via a request object, either of type
              #   {::Google::Api::HttpBody} or an equivalent Hash.
              #
              #   @param request [::Google::Api::HttpBody, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload put_resource(content_type: nil, data: nil, extensions: nil)
              #   Pass arguments to `put_resource` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param content_type [::String]
              #     The HTTP Content-Type header value specifying the content type of the body.
              #   @param data [::String]
              #     The HTTP request/response body as raw binary.
              #   @param extensions [::Array<::Google::Protobuf::Any, ::Hash>]
              #     Application specific response metadata. Must be set in the first response
              #     for streaming APIs.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Api::HttpBody]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/gke_connect/gateway/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Api::HttpBody.new
              #
              #   # Call the put_resource method.
              #   result = client.put_resource request
              #
              #   # The returned object is of type Google::Api::HttpBody.
              #   p result
              #
              def put_resource request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Api::HttpBody

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.put_resource.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::GkeConnect::Gateway::V1beta1::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.put_resource.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.put_resource.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @gateway_service_stub.call_rpc :put_resource, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # PatchResource performs an HTTP PATCH on the Kubernetes API Server.
              #
              # @overload patch_resource(request, options = nil)
              #   Pass arguments to `patch_resource` via a request object, either of type
              #   {::Google::Api::HttpBody} or an equivalent Hash.
              #
              #   @param request [::Google::Api::HttpBody, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload patch_resource(content_type: nil, data: nil, extensions: nil)
              #   Pass arguments to `patch_resource` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param content_type [::String]
              #     The HTTP Content-Type header value specifying the content type of the body.
              #   @param data [::String]
              #     The HTTP request/response body as raw binary.
              #   @param extensions [::Array<::Google::Protobuf::Any, ::Hash>]
              #     Application specific response metadata. Must be set in the first response
              #     for streaming APIs.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Api::HttpBody]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Api::HttpBody]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/gke_connect/gateway/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Api::HttpBody.new
              #
              #   # Call the patch_resource method.
              #   result = client.patch_resource request
              #
              #   # The returned object is of type Google::Api::HttpBody.
              #   p result
              #
              def patch_resource request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Api::HttpBody

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.patch_resource.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::GkeConnect::Gateway::V1beta1::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.patch_resource.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.patch_resource.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @gateway_service_stub.call_rpc :patch_resource, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the GatewayService API.
              #
              # This class represents the configuration for GatewayService,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # get_resource to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_resource.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_resource.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"connectgateway.googleapis.com"`.
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

                config_attr :endpoint,      "connectgateway.googleapis.com", ::String
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
                # Configuration RPC class for the GatewayService API.
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
                  # RPC-specific configuration for `get_resource`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_resource
                  ##
                  # RPC-specific configuration for `post_resource`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :post_resource
                  ##
                  # RPC-specific configuration for `delete_resource`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_resource
                  ##
                  # RPC-specific configuration for `put_resource`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :put_resource
                  ##
                  # RPC-specific configuration for `patch_resource`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :patch_resource

                  # @private
                  def initialize parent_rpcs = nil
                    get_resource_config = parent_rpcs.get_resource if parent_rpcs.respond_to? :get_resource
                    @get_resource = ::Gapic::Config::Method.new get_resource_config
                    post_resource_config = parent_rpcs.post_resource if parent_rpcs.respond_to? :post_resource
                    @post_resource = ::Gapic::Config::Method.new post_resource_config
                    delete_resource_config = parent_rpcs.delete_resource if parent_rpcs.respond_to? :delete_resource
                    @delete_resource = ::Gapic::Config::Method.new delete_resource_config
                    put_resource_config = parent_rpcs.put_resource if parent_rpcs.respond_to? :put_resource
                    @put_resource = ::Gapic::Config::Method.new put_resource_config
                    patch_resource_config = parent_rpcs.patch_resource if parent_rpcs.respond_to? :patch_resource
                    @patch_resource = ::Gapic::Config::Method.new patch_resource_config

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
end
