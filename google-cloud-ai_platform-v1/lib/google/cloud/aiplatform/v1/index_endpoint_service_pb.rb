# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index_endpoint_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/index_endpoint_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/index_endpoint_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.CreateIndexEndpointRequest" do
      optional :parent, :string, 1
      optional :index_endpoint, :message, 2, "google.cloud.aiplatform.v1.IndexEndpoint"
    end
    add_message "google.cloud.aiplatform.v1.CreateIndexEndpointOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.GetIndexEndpointRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListIndexEndpointsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListIndexEndpointsResponse" do
      repeated :index_endpoints, :message, 1, "google.cloud.aiplatform.v1.IndexEndpoint"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UpdateIndexEndpointRequest" do
      optional :index_endpoint, :message, 1, "google.cloud.aiplatform.v1.IndexEndpoint"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.DeleteIndexEndpointRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.DeployIndexRequest" do
      optional :index_endpoint, :string, 1
      optional :deployed_index, :message, 2, "google.cloud.aiplatform.v1.DeployedIndex"
    end
    add_message "google.cloud.aiplatform.v1.DeployIndexResponse" do
      optional :deployed_index, :message, 1, "google.cloud.aiplatform.v1.DeployedIndex"
    end
    add_message "google.cloud.aiplatform.v1.DeployIndexOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :deployed_index_id, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UndeployIndexRequest" do
      optional :index_endpoint, :string, 1
      optional :deployed_index_id, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UndeployIndexResponse" do
    end
    add_message "google.cloud.aiplatform.v1.UndeployIndexOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.MutateDeployedIndexRequest" do
      optional :index_endpoint, :string, 1
      optional :deployed_index, :message, 2, "google.cloud.aiplatform.v1.DeployedIndex"
    end
    add_message "google.cloud.aiplatform.v1.MutateDeployedIndexResponse" do
      optional :deployed_index, :message, 1, "google.cloud.aiplatform.v1.DeployedIndex"
    end
    add_message "google.cloud.aiplatform.v1.MutateDeployedIndexOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :deployed_index_id, :string, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        CreateIndexEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexEndpointRequest").msgclass
        CreateIndexEndpointOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexEndpointOperationMetadata").msgclass
        GetIndexEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetIndexEndpointRequest").msgclass
        ListIndexEndpointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexEndpointsRequest").msgclass
        ListIndexEndpointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexEndpointsResponse").msgclass
        UpdateIndexEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateIndexEndpointRequest").msgclass
        DeleteIndexEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteIndexEndpointRequest").msgclass
        DeployIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployIndexRequest").msgclass
        DeployIndexResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployIndexResponse").msgclass
        DeployIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployIndexOperationMetadata").msgclass
        UndeployIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployIndexRequest").msgclass
        UndeployIndexResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployIndexResponse").msgclass
        UndeployIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployIndexOperationMetadata").msgclass
        MutateDeployedIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedIndexRequest").msgclass
        MutateDeployedIndexResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedIndexResponse").msgclass
        MutateDeployedIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedIndexOperationMetadata").msgclass
      end
    end
  end
end
