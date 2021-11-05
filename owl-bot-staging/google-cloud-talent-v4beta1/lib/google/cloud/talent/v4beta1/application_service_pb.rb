# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/application_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/application_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/application_service.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.CreateApplicationRequest" do
      optional :parent, :string, 1
      optional :application, :message, 2, "google.cloud.talent.v4beta1.Application"
    end
    add_message "google.cloud.talent.v4beta1.GetApplicationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4beta1.UpdateApplicationRequest" do
      optional :application, :message, 1, "google.cloud.talent.v4beta1.Application"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.talent.v4beta1.DeleteApplicationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4beta1.ListApplicationsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.cloud.talent.v4beta1.ListApplicationsResponse" do
      repeated :applications, :message, 1, "google.cloud.talent.v4beta1.Application"
      optional :next_page_token, :string, 2
      optional :metadata, :message, 3, "google.cloud.talent.v4beta1.ResponseMetadata"
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        CreateApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CreateApplicationRequest").msgclass
        GetApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.GetApplicationRequest").msgclass
        UpdateApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.UpdateApplicationRequest").msgclass
        DeleteApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DeleteApplicationRequest").msgclass
        ListApplicationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListApplicationsRequest").msgclass
        ListApplicationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListApplicationsResponse").msgclass
      end
    end
  end
end
