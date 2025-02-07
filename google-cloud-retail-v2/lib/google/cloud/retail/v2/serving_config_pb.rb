# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/serving_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/cloud/retail/v2/search_service_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/serving_config.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.ServingConfig" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :model_id, :string, 3
      optional :price_reranking_level, :string, 4
      repeated :facet_control_ids, :string, 5
      optional :dynamic_facet_spec, :message, 6, "google.cloud.retail.v2.SearchRequest.DynamicFacetSpec"
      repeated :boost_control_ids, :string, 7
      repeated :filter_control_ids, :string, 9
      repeated :redirect_control_ids, :string, 10
      repeated :twoway_synonyms_control_ids, :string, 18
      repeated :oneway_synonyms_control_ids, :string, 12
      repeated :do_not_associate_control_ids, :string, 13
      repeated :replacement_control_ids, :string, 14
      repeated :ignore_control_ids, :string, 15
      optional :diversity_level, :string, 8
      optional :diversity_type, :enum, 20, "google.cloud.retail.v2.ServingConfig.DiversityType"
      optional :enable_category_filter_level, :string, 16
      optional :personalization_spec, :message, 21, "google.cloud.retail.v2.SearchRequest.PersonalizationSpec"
      repeated :solution_types, :enum, 19, "google.cloud.retail.v2.SolutionType"
    end
    add_enum "google.cloud.retail.v2.ServingConfig.DiversityType" do
      value :DIVERSITY_TYPE_UNSPECIFIED, 0
      value :RULE_BASED_DIVERSITY, 2
      value :DATA_DRIVEN_DIVERSITY, 3
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        ServingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ServingConfig").msgclass
        ServingConfig::DiversityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ServingConfig.DiversityType").enummodule
      end
    end
  end
end
