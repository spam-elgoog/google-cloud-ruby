# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/cloudprofiler/v2/profiler.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/cloudprofiler/v2/profiler.proto", :syntax => :proto3) do
    add_message "google.devtools.cloudprofiler.v2.CreateProfileRequest" do
      optional :parent, :string, 4
      optional :deployment, :message, 1, "google.devtools.cloudprofiler.v2.Deployment"
      repeated :profile_type, :enum, 2, "google.devtools.cloudprofiler.v2.ProfileType"
    end
    add_message "google.devtools.cloudprofiler.v2.CreateOfflineProfileRequest" do
      optional :parent, :string, 1
      optional :profile, :message, 2, "google.devtools.cloudprofiler.v2.Profile"
    end
    add_message "google.devtools.cloudprofiler.v2.UpdateProfileRequest" do
      optional :profile, :message, 1, "google.devtools.cloudprofiler.v2.Profile"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.devtools.cloudprofiler.v2.Profile" do
      optional :name, :string, 1
      optional :profile_type, :enum, 2, "google.devtools.cloudprofiler.v2.ProfileType"
      optional :deployment, :message, 3, "google.devtools.cloudprofiler.v2.Deployment"
      optional :duration, :message, 4, "google.protobuf.Duration"
      optional :profile_bytes, :bytes, 5
      map :labels, :string, :string, 6
    end
    add_message "google.devtools.cloudprofiler.v2.Deployment" do
      optional :project_id, :string, 1
      optional :target, :string, 2
      map :labels, :string, :string, 3
    end
    add_enum "google.devtools.cloudprofiler.v2.ProfileType" do
      value :PROFILE_TYPE_UNSPECIFIED, 0
      value :CPU, 1
      value :WALL, 2
      value :HEAP, 3
      value :THREADS, 4
      value :CONTENTION, 5
      value :PEAK_HEAP, 6
      value :HEAP_ALLOC, 7
    end
  end
end

module Google
  module Cloud
    module Profiler
      module V2
        CreateProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.CreateProfileRequest").msgclass
        CreateOfflineProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.CreateOfflineProfileRequest").msgclass
        UpdateProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.UpdateProfileRequest").msgclass
        Profile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.Profile").msgclass
        Deployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.Deployment").msgclass
        ProfileType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.cloudprofiler.v2.ProfileType").enummodule
      end
    end
  end
end
