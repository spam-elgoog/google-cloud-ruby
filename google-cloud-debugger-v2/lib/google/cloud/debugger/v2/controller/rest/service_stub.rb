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

require "google/devtools/clouddebugger/v2/controller_pb"

module Google
  module Cloud
    module Debugger
      module V2
        module Controller
          module Rest
            ##
            # REST service stub for the Controller service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                             numeric_enums: true,
                                                             raise_faraday_errors: false
              end

              ##
              # Baseline implementation for the register_debuggee REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::RegisterDebuggeeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Debugger::V2::RegisterDebuggeeResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Debugger::V2::RegisterDebuggeeResponse]
              #   A result object deserialized from the server's reply
              def register_debuggee request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_register_debuggee_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Debugger::V2::RegisterDebuggeeResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the list_active_breakpoints REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse]
              #   A result object deserialized from the server's reply
              def list_active_breakpoints request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_active_breakpoints_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Debugger::V2::ListActiveBreakpointsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the update_active_breakpoint REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse]
              #   A result object deserialized from the server's reply
              def update_active_breakpoint request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_active_breakpoint_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Debugger::V2::UpdateActiveBreakpointResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the register_debuggee REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::RegisterDebuggeeRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_register_debuggee_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2/controller/debuggees/register",
                                                          body: "*",
                                                          matches: []
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_active_breakpoints REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::ListActiveBreakpointsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_active_breakpoints_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2/controller/debuggees/{debuggee_id}/breakpoints",
                                                          matches: [
                                                            ["debuggee_id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_active_breakpoint REST call
              #
              # @param request_pb [::Google::Cloud::Debugger::V2::UpdateActiveBreakpointRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_active_breakpoint_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :put,
                                                          uri_template: "/v2/controller/debuggees/{debuggee_id}/breakpoints/{breakpoint.id}",
                                                          body: "*",
                                                          matches: [
                                                            ["debuggee_id", %r{^[^/]+/?$}, false],
                                                            ["breakpoint.id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
