# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/gcs.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/gcs.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.GcsDestination" do
      optional :uri, :string, 1
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GcsDestination").msgclass
        end
      end
    end
  end
end
