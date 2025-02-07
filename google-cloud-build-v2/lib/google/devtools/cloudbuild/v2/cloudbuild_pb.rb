# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/cloudbuild/v2/cloudbuild.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/cloudbuild/v2/cloudbuild.proto", :syntax => :proto3) do
    add_message "google.devtools.cloudbuild.v2.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.devtools.cloudbuild.v2.RunWorkflowCustomOperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :verb, :string, 3
      optional :requested_cancellation, :bool, 4
      optional :api_version, :string, 5
      optional :target, :string, 6
      optional :pipeline_run_id, :string, 7
    end
  end
end

module Google
  module Cloud
    module Build
      module V2
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudbuild.v2.OperationMetadata").msgclass
        RunWorkflowCustomOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudbuild.v2.RunWorkflowCustomOperationMetadata").msgclass
      end
    end
  end
end
