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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/data_catalog/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :data_catalog do |config|
  config.add_field! :endpoint,      "datacatalog.googleapis.com", match: ::String
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
    module DataCatalog
      ##
      # Create a new client object for DataCatalog.
      #
      # By default, this returns an instance of
      # [Google::Cloud::DataCatalog::V1::DataCatalog::Client](https://googleapis.dev/ruby/google-cloud-data_catalog-v1/latest/Google/Cloud/DataCatalog/V1/DataCatalog/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the DataCatalog service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About DataCatalog
      #
      # Data Catalog API service allows you to discover, understand, and manage
      # your data.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [DataCatalog::Client] A client object for the specified version.
      #
      def self.data_catalog version: :v1, &block
        require "google/cloud/data_catalog/#{version.to_s.downcase}"

        package_name = Google::Cloud::DataCatalog
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::DataCatalog.const_get package_name
        package_module.const_get(:DataCatalog).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PolicyTagManager.
      #
      # By default, this returns an instance of
      # [Google::Cloud::DataCatalog::V1::PolicyTagManager::Client](https://googleapis.dev/ruby/google-cloud-data_catalog-v1/latest/Google/Cloud/DataCatalog/V1/PolicyTagManager/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PolicyTagManager service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PolicyTagManager
      #
      # Policy Tag Manager API service allows you to manage your policy tags and
      # taxonomies.
      #
      # Policy tags are used to tag BigQuery columns and apply additional access
      # control policies. A taxonomy is a hierarchical grouping of policy tags that
      # classify data along a common axis.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [PolicyTagManager::Client] A client object for the specified version.
      #
      def self.policy_tag_manager version: :v1, &block
        require "google/cloud/data_catalog/#{version.to_s.downcase}"

        package_name = Google::Cloud::DataCatalog
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::DataCatalog.const_get package_name
        package_module.const_get(:PolicyTagManager).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PolicyTagManagerSerialization.
      #
      # By default, this returns an instance of
      # [Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client](https://googleapis.dev/ruby/google-cloud-data_catalog-v1/latest/Google/Cloud/DataCatalog/V1/PolicyTagManagerSerialization/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PolicyTagManagerSerialization service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PolicyTagManagerSerialization
      #
      # Policy Tag Manager Serialization API service allows you to manipulate
      # your policy tags and taxonomies in a serialized format.
      #
      # Taxonomy is a hierarchical group of policy tags.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [PolicyTagManagerSerialization::Client] A client object for the specified version.
      #
      def self.policy_tag_manager_serialization version: :v1, &block
        require "google/cloud/data_catalog/#{version.to_s.downcase}"

        package_name = Google::Cloud::DataCatalog
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::DataCatalog.const_get package_name
        package_module.const_get(:PolicyTagManagerSerialization).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-data_catalog library.
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
      #   Additional gRPC headers to be sent with the call.
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
        yield ::Google::Cloud.configure.data_catalog if block_given?

        ::Google::Cloud.configure.data_catalog
      end
    end
  end
end

helper_path = ::File.join __dir__, "data_catalog", "helpers.rb"
require "google/cloud/data_catalog/helpers" if ::File.file? helper_path
