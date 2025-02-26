# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/model_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/evaluated_annotation_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/cloud/aiplatform/v1/model_pb'
require 'google/cloud/aiplatform/v1/model_evaluation_pb'
require 'google/cloud/aiplatform/v1/model_evaluation_slice_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/model_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.UploadModelRequest" do
      optional :parent, :string, 1
      optional :parent_model, :string, 4
      optional :model_id, :string, 5
      optional :model, :message, 2, "google.cloud.aiplatform.v1.Model"
      optional :service_account, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.UploadModelOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.UploadModelResponse" do
      optional :model, :string, 1
      optional :model_version_id, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.GetModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListModelsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListModelsResponse" do
      repeated :models, :message, 1, "google.cloud.aiplatform.v1.Model"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.ListModelVersionsRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListModelVersionsResponse" do
      repeated :models, :message, 1, "google.cloud.aiplatform.v1.Model"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.UpdateModelRequest" do
      optional :model, :message, 1, "google.cloud.aiplatform.v1.Model"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.DeleteModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.DeleteModelVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.MergeVersionAliasesRequest" do
      optional :name, :string, 1
      repeated :version_aliases, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.ExportModelRequest" do
      optional :name, :string, 1
      optional :output_config, :message, 2, "google.cloud.aiplatform.v1.ExportModelRequest.OutputConfig"
    end
    add_message "google.cloud.aiplatform.v1.ExportModelRequest.OutputConfig" do
      optional :export_format_id, :string, 1
      optional :artifact_destination, :message, 3, "google.cloud.aiplatform.v1.GcsDestination"
      optional :image_destination, :message, 4, "google.cloud.aiplatform.v1.ContainerRegistryDestination"
    end
    add_message "google.cloud.aiplatform.v1.ExportModelOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :output_info, :message, 2, "google.cloud.aiplatform.v1.ExportModelOperationMetadata.OutputInfo"
    end
    add_message "google.cloud.aiplatform.v1.ExportModelOperationMetadata.OutputInfo" do
      optional :artifact_output_uri, :string, 2
      optional :image_output_uri, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.ExportModelResponse" do
    end
    add_message "google.cloud.aiplatform.v1.CopyModelRequest" do
      optional :parent, :string, 1
      optional :source_model, :string, 2
      optional :encryption_spec, :message, 3, "google.cloud.aiplatform.v1.EncryptionSpec"
      oneof :destination_model do
        optional :model_id, :string, 4
        optional :parent_model, :string, 5
      end
    end
    add_message "google.cloud.aiplatform.v1.CopyModelOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.CopyModelResponse" do
      optional :model, :string, 1
      optional :model_version_id, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.ImportModelEvaluationRequest" do
      optional :parent, :string, 1
      optional :model_evaluation, :message, 2, "google.cloud.aiplatform.v1.ModelEvaluation"
    end
    add_message "google.cloud.aiplatform.v1.BatchImportModelEvaluationSlicesRequest" do
      optional :parent, :string, 1
      repeated :model_evaluation_slices, :message, 2, "google.cloud.aiplatform.v1.ModelEvaluationSlice"
    end
    add_message "google.cloud.aiplatform.v1.BatchImportModelEvaluationSlicesResponse" do
      repeated :imported_model_evaluation_slices, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.BatchImportEvaluatedAnnotationsRequest" do
      optional :parent, :string, 1
      repeated :evaluated_annotations, :message, 2, "google.cloud.aiplatform.v1.EvaluatedAnnotation"
    end
    add_message "google.cloud.aiplatform.v1.BatchImportEvaluatedAnnotationsResponse" do
      optional :imported_evaluated_annotations_count, :int32, 1
    end
    add_message "google.cloud.aiplatform.v1.GetModelEvaluationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListModelEvaluationsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListModelEvaluationsResponse" do
      repeated :model_evaluations, :message, 1, "google.cloud.aiplatform.v1.ModelEvaluation"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.GetModelEvaluationSliceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ListModelEvaluationSlicesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListModelEvaluationSlicesResponse" do
      repeated :model_evaluation_slices, :message, 1, "google.cloud.aiplatform.v1.ModelEvaluationSlice"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        UploadModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UploadModelRequest").msgclass
        UploadModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UploadModelOperationMetadata").msgclass
        UploadModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UploadModelResponse").msgclass
        GetModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetModelRequest").msgclass
        ListModelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelsRequest").msgclass
        ListModelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelsResponse").msgclass
        ListModelVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelVersionsRequest").msgclass
        ListModelVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelVersionsResponse").msgclass
        UpdateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateModelRequest").msgclass
        DeleteModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteModelRequest").msgclass
        DeleteModelVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteModelVersionRequest").msgclass
        MergeVersionAliasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MergeVersionAliasesRequest").msgclass
        ExportModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportModelRequest").msgclass
        ExportModelRequest::OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportModelRequest.OutputConfig").msgclass
        ExportModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportModelOperationMetadata").msgclass
        ExportModelOperationMetadata::OutputInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportModelOperationMetadata.OutputInfo").msgclass
        ExportModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportModelResponse").msgclass
        CopyModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CopyModelRequest").msgclass
        CopyModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CopyModelOperationMetadata").msgclass
        CopyModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CopyModelResponse").msgclass
        ImportModelEvaluationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ImportModelEvaluationRequest").msgclass
        BatchImportModelEvaluationSlicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchImportModelEvaluationSlicesRequest").msgclass
        BatchImportModelEvaluationSlicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchImportModelEvaluationSlicesResponse").msgclass
        BatchImportEvaluatedAnnotationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchImportEvaluatedAnnotationsRequest").msgclass
        BatchImportEvaluatedAnnotationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchImportEvaluatedAnnotationsResponse").msgclass
        GetModelEvaluationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetModelEvaluationRequest").msgclass
        ListModelEvaluationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelEvaluationsRequest").msgclass
        ListModelEvaluationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelEvaluationsResponse").msgclass
        GetModelEvaluationSliceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetModelEvaluationSliceRequest").msgclass
        ListModelEvaluationSlicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelEvaluationSlicesRequest").msgclass
        ListModelEvaluationSlicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListModelEvaluationSlicesResponse").msgclass
      end
    end
  end
end
