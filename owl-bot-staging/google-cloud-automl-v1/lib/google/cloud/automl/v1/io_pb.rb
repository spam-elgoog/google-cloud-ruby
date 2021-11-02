# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/io.proto

require 'google/api/field_behavior_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/io.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.InputConfig" do
      map :params, :string, :string, 2
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.automl.v1.GcsSource"
      end
    end
    add_message "google.cloud.automl.v1.BatchPredictInputConfig" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.automl.v1.GcsSource"
      end
    end
    add_message "google.cloud.automl.v1.DocumentInputConfig" do
      optional :gcs_source, :message, 1, "google.cloud.automl.v1.GcsSource"
    end
    add_message "google.cloud.automl.v1.OutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.automl.v1.GcsDestination"
      end
    end
    add_message "google.cloud.automl.v1.BatchPredictOutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.automl.v1.GcsDestination"
      end
    end
    add_message "google.cloud.automl.v1.ModelExportOutputConfig" do
      optional :model_format, :string, 4
      map :params, :string, :string, 2
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.automl.v1.GcsDestination"
      end
    end
    add_message "google.cloud.automl.v1.GcsSource" do
      repeated :input_uris, :string, 1
    end
    add_message "google.cloud.automl.v1.GcsDestination" do
      optional :output_uri_prefix, :string, 1
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.InputConfig").msgclass
        BatchPredictInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.BatchPredictInputConfig").msgclass
        DocumentInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DocumentInputConfig").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.OutputConfig").msgclass
        BatchPredictOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.BatchPredictOutputConfig").msgclass
        ModelExportOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ModelExportOutputConfig").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GcsSource").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GcsDestination").msgclass
      end
    end
  end
end
