# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/index_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/index_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.CreateIndexRequest" do
      optional :parent, :string, 1
      optional :index, :message, 2, "google.cloud.aiplatform.v1.Index"
    end
    add_message "google.cloud.aiplatform.v1.CreateIndexOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :nearest_neighbor_search_operation_metadata, :message, 2, "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.GetIndexRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListIndexesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListIndexesResponse" do
      repeated :indexes, :message, 1, "google.cloud.aiplatform.v1.Index"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UpdateIndexRequest" do
      optional :index, :message, 1, "google.cloud.aiplatform.v1.Index"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.UpdateIndexOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :nearest_neighbor_search_operation_metadata, :message, 2, "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.DeleteIndexRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.UpsertDatapointsRequest" do
      optional :index, :string, 1
      repeated :datapoints, :message, 2, "google.cloud.aiplatform.v1.IndexDatapoint"
    end
    add_message "google.cloud.aiplatform.v1.UpsertDatapointsResponse" do
    end
    add_message "google.cloud.aiplatform.v1.RemoveDatapointsRequest" do
      optional :index, :string, 1
      repeated :datapoint_ids, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.RemoveDatapointsResponse" do
    end
    add_message "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata" do
      repeated :content_validation_stats, :message, 1, "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.ContentValidationStats"
      optional :data_bytes_count, :int64, 2
    end
    add_message "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError" do
      optional :error_type, :enum, 1, "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType"
      optional :error_message, :string, 2
      optional :source_gcs_uri, :string, 3
      optional :embedding_id, :string, 4
      optional :raw_record, :string, 5
    end
    add_enum "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType" do
      value :ERROR_TYPE_UNSPECIFIED, 0
      value :EMPTY_LINE, 1
      value :INVALID_JSON_SYNTAX, 2
      value :INVALID_CSV_SYNTAX, 3
      value :INVALID_AVRO_SYNTAX, 4
      value :INVALID_EMBEDDING_ID, 5
      value :EMBEDDING_SIZE_MISMATCH, 6
      value :NAMESPACE_MISSING, 7
    end
    add_message "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.ContentValidationStats" do
      optional :source_gcs_uri, :string, 1
      optional :valid_record_count, :int64, 2
      optional :invalid_record_count, :int64, 3
      repeated :partial_errors, :message, 4, "google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        CreateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexRequest").msgclass
        CreateIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexOperationMetadata").msgclass
        GetIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetIndexRequest").msgclass
        ListIndexesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexesRequest").msgclass
        ListIndexesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexesResponse").msgclass
        UpdateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateIndexRequest").msgclass
        UpdateIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateIndexOperationMetadata").msgclass
        DeleteIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteIndexRequest").msgclass
        UpsertDatapointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpsertDatapointsRequest").msgclass
        UpsertDatapointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpsertDatapointsResponse").msgclass
        RemoveDatapointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RemoveDatapointsRequest").msgclass
        RemoveDatapointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RemoveDatapointsResponse").msgclass
        NearestNeighborSearchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata").msgclass
        NearestNeighborSearchOperationMetadata::RecordError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError").msgclass
        NearestNeighborSearchOperationMetadata::RecordError::RecordErrorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType").enummodule
        NearestNeighborSearchOperationMetadata::ContentValidationStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.ContentValidationStats").msgclass
      end
    end
  end
end
