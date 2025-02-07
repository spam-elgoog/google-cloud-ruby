# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/devtools/artifactregistry/v1/apt_artifact_pb'
require 'google/devtools/artifactregistry/v1/artifact_pb'
require 'google/devtools/artifactregistry/v1/file_pb'
require 'google/devtools/artifactregistry/v1/package_pb'
require 'google/devtools/artifactregistry/v1/repository_pb'
require 'google/devtools/artifactregistry/v1/settings_pb'
require 'google/devtools/artifactregistry/v1/tag_pb'
require 'google/devtools/artifactregistry/v1/version_pb'
require 'google/devtools/artifactregistry/v1/vpcsc_config_pb'
require 'google/devtools/artifactregistry/v1/yum_artifact_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/artifactregistry/v1/service.proto", :syntax => :proto3) do
    add_message "google.devtools.artifactregistry.v1.OperationMetadata" do
    end
  end
end

module Google
  module Cloud
    module ArtifactRegistry
      module V1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.OperationMetadata").msgclass
      end
    end
  end
end
