# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/securitycenter_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/securitycenter/v1/asset_pb'
require 'google/cloud/securitycenter/v1/bigquery_export_pb'
require 'google/cloud/securitycenter/v1/effective_security_health_analytics_custom_module_pb'
require 'google/cloud/securitycenter/v1/external_system_pb'
require 'google/cloud/securitycenter/v1/finding_pb'
require 'google/cloud/securitycenter/v1/folder_pb'
require 'google/cloud/securitycenter/v1/mute_config_pb'
require 'google/cloud/securitycenter/v1/notification_config_pb'
require 'google/cloud/securitycenter/v1/organization_settings_pb'
require 'google/cloud/securitycenter/v1/run_asset_discovery_response_pb'
require 'google/cloud/securitycenter/v1/security_health_analytics_custom_module_pb'
require 'google/cloud/securitycenter/v1/security_marks_pb'
require 'google/cloud/securitycenter/v1/source_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/securitycenter_service.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.BulkMuteFindingsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :mute_annotation, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.BulkMuteFindingsResponse" do
    end
    add_message "google.cloud.securitycenter.v1.CreateFindingRequest" do
      optional :parent, :string, 1
      optional :finding_id, :string, 2
      optional :finding, :message, 3, "google.cloud.securitycenter.v1.Finding"
    end
    add_message "google.cloud.securitycenter.v1.CreateMuteConfigRequest" do
      optional :parent, :string, 1
      optional :mute_config, :message, 2, "google.cloud.securitycenter.v1.MuteConfig"
      optional :mute_config_id, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.CreateNotificationConfigRequest" do
      optional :parent, :string, 1
      optional :config_id, :string, 2
      optional :notification_config, :message, 3, "google.cloud.securitycenter.v1.NotificationConfig"
    end
    add_message "google.cloud.securitycenter.v1.CreateSecurityHealthAnalyticsCustomModuleRequest" do
      optional :parent, :string, 1
      optional :security_health_analytics_custom_module, :message, 2, "google.cloud.securitycenter.v1.SecurityHealthAnalyticsCustomModule"
    end
    add_message "google.cloud.securitycenter.v1.CreateSourceRequest" do
      optional :parent, :string, 1
      optional :source, :message, 2, "google.cloud.securitycenter.v1.Source"
    end
    add_message "google.cloud.securitycenter.v1.DeleteMuteConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.DeleteNotificationConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.DeleteSecurityHealthAnalyticsCustomModuleRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetBigQueryExportRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetMuteConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetNotificationConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetOrganizationSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetEffectiveSecurityHealthAnalyticsCustomModuleRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetSecurityHealthAnalyticsCustomModuleRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GetSourceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.GroupAssetsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :group_by, :string, 3
      optional :compare_duration, :message, 4, "google.protobuf.Duration"
      optional :read_time, :message, 5, "google.protobuf.Timestamp"
      optional :page_token, :string, 7
      optional :page_size, :int32, 8
    end
    add_message "google.cloud.securitycenter.v1.GroupAssetsResponse" do
      repeated :group_by_results, :message, 1, "google.cloud.securitycenter.v1.GroupResult"
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      optional :next_page_token, :string, 3
      optional :total_size, :int32, 4
    end
    add_message "google.cloud.securitycenter.v1.GroupFindingsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :group_by, :string, 3
      optional :read_time, :message, 4, "google.protobuf.Timestamp"
      optional :compare_duration, :message, 5, "google.protobuf.Duration"
      optional :page_token, :string, 7
      optional :page_size, :int32, 8
    end
    add_message "google.cloud.securitycenter.v1.GroupFindingsResponse" do
      repeated :group_by_results, :message, 1, "google.cloud.securitycenter.v1.GroupResult"
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      optional :next_page_token, :string, 3
      optional :total_size, :int32, 4
    end
    add_message "google.cloud.securitycenter.v1.GroupResult" do
      map :properties, :string, :message, 1, "google.protobuf.Value"
      optional :count, :int64, 2
    end
    add_message "google.cloud.securitycenter.v1.ListDescendantSecurityHealthAnalyticsCustomModulesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.ListDescendantSecurityHealthAnalyticsCustomModulesResponse" do
      repeated :security_health_analytics_custom_modules, :message, 1, "google.cloud.securitycenter.v1.SecurityHealthAnalyticsCustomModule"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListMuteConfigsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.ListMuteConfigsResponse" do
      repeated :mute_configs, :message, 1, "google.cloud.securitycenter.v1.MuteConfig"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListNotificationConfigsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.cloud.securitycenter.v1.ListNotificationConfigsResponse" do
      repeated :notification_configs, :message, 1, "google.cloud.securitycenter.v1.NotificationConfig"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListEffectiveSecurityHealthAnalyticsCustomModulesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse" do
      repeated :effective_security_health_analytics_custom_modules, :message, 1, "google.cloud.securitycenter.v1.EffectiveSecurityHealthAnalyticsCustomModule"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListSecurityHealthAnalyticsCustomModulesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.ListSecurityHealthAnalyticsCustomModulesResponse" do
      repeated :security_health_analytics_custom_modules, :message, 1, "google.cloud.securitycenter.v1.SecurityHealthAnalyticsCustomModule"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListSourcesRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 7
    end
    add_message "google.cloud.securitycenter.v1.ListSourcesResponse" do
      repeated :sources, :message, 1, "google.cloud.securitycenter.v1.Source"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.ListAssetsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :order_by, :string, 3
      optional :read_time, :message, 4, "google.protobuf.Timestamp"
      optional :compare_duration, :message, 5, "google.protobuf.Duration"
      optional :field_mask, :message, 7, "google.protobuf.FieldMask"
      optional :page_token, :string, 8
      optional :page_size, :int32, 9
    end
    add_message "google.cloud.securitycenter.v1.ListAssetsResponse" do
      repeated :list_assets_results, :message, 1, "google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult"
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      optional :next_page_token, :string, 3
      optional :total_size, :int32, 4
    end
    add_message "google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult" do
      optional :asset, :message, 1, "google.cloud.securitycenter.v1.Asset"
      optional :state_change, :enum, 2, "google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult.StateChange"
    end
    add_enum "google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult.StateChange" do
      value :UNUSED, 0
      value :ADDED, 1
      value :REMOVED, 2
      value :ACTIVE, 3
    end
    add_message "google.cloud.securitycenter.v1.ListFindingsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :order_by, :string, 3
      optional :read_time, :message, 4, "google.protobuf.Timestamp"
      optional :compare_duration, :message, 5, "google.protobuf.Duration"
      optional :field_mask, :message, 7, "google.protobuf.FieldMask"
      optional :page_token, :string, 8
      optional :page_size, :int32, 9
    end
    add_message "google.cloud.securitycenter.v1.ListFindingsResponse" do
      repeated :list_findings_results, :message, 1, "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult"
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      optional :next_page_token, :string, 3
      optional :total_size, :int32, 4
    end
    add_message "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult" do
      optional :finding, :message, 1, "google.cloud.securitycenter.v1.Finding"
      optional :state_change, :enum, 2, "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.StateChange"
      optional :resource, :message, 3, "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.Resource"
    end
    add_message "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.Resource" do
      optional :name, :string, 1
      optional :display_name, :string, 8
      optional :type, :string, 6
      optional :project_name, :string, 2
      optional :project_display_name, :string, 3
      optional :parent_name, :string, 4
      optional :parent_display_name, :string, 5
      repeated :folders, :message, 7, "google.cloud.securitycenter.v1.Folder"
    end
    add_enum "google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.StateChange" do
      value :UNUSED, 0
      value :CHANGED, 1
      value :UNCHANGED, 2
      value :ADDED, 3
      value :REMOVED, 4
    end
    add_message "google.cloud.securitycenter.v1.SetFindingStateRequest" do
      optional :name, :string, 1
      optional :state, :enum, 2, "google.cloud.securitycenter.v1.Finding.State"
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.securitycenter.v1.SetMuteRequest" do
      optional :name, :string, 1
      optional :mute, :enum, 2, "google.cloud.securitycenter.v1.Finding.Mute"
    end
    add_message "google.cloud.securitycenter.v1.RunAssetDiscoveryRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.securitycenter.v1.UpdateExternalSystemRequest" do
      optional :external_system, :message, 1, "google.cloud.securitycenter.v1.ExternalSystem"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateFindingRequest" do
      optional :finding, :message, 1, "google.cloud.securitycenter.v1.Finding"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateMuteConfigRequest" do
      optional :mute_config, :message, 1, "google.cloud.securitycenter.v1.MuteConfig"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateNotificationConfigRequest" do
      optional :notification_config, :message, 1, "google.cloud.securitycenter.v1.NotificationConfig"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateOrganizationSettingsRequest" do
      optional :organization_settings, :message, 1, "google.cloud.securitycenter.v1.OrganizationSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateSecurityHealthAnalyticsCustomModuleRequest" do
      optional :security_health_analytics_custom_module, :message, 1, "google.cloud.securitycenter.v1.SecurityHealthAnalyticsCustomModule"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateSourceRequest" do
      optional :source, :message, 1, "google.cloud.securitycenter.v1.Source"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.UpdateSecurityMarksRequest" do
      optional :security_marks, :message, 1, "google.cloud.securitycenter.v1.SecurityMarks"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.securitycenter.v1.CreateBigQueryExportRequest" do
      optional :parent, :string, 1
      optional :big_query_export, :message, 2, "google.cloud.securitycenter.v1.BigQueryExport"
      optional :big_query_export_id, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.UpdateBigQueryExportRequest" do
      optional :big_query_export, :message, 1, "google.cloud.securitycenter.v1.BigQueryExport"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.securitycenter.v1.ListBigQueryExportsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.securitycenter.v1.ListBigQueryExportsResponse" do
      repeated :big_query_exports, :message, 1, "google.cloud.securitycenter.v1.BigQueryExport"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.securitycenter.v1.DeleteBigQueryExportRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        BulkMuteFindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.BulkMuteFindingsRequest").msgclass
        BulkMuteFindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.BulkMuteFindingsResponse").msgclass
        CreateFindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateFindingRequest").msgclass
        CreateMuteConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateMuteConfigRequest").msgclass
        CreateNotificationConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateNotificationConfigRequest").msgclass
        CreateSecurityHealthAnalyticsCustomModuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateSecurityHealthAnalyticsCustomModuleRequest").msgclass
        CreateSourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateSourceRequest").msgclass
        DeleteMuteConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.DeleteMuteConfigRequest").msgclass
        DeleteNotificationConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.DeleteNotificationConfigRequest").msgclass
        DeleteSecurityHealthAnalyticsCustomModuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.DeleteSecurityHealthAnalyticsCustomModuleRequest").msgclass
        GetBigQueryExportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetBigQueryExportRequest").msgclass
        GetMuteConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetMuteConfigRequest").msgclass
        GetNotificationConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetNotificationConfigRequest").msgclass
        GetOrganizationSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetOrganizationSettingsRequest").msgclass
        GetEffectiveSecurityHealthAnalyticsCustomModuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetEffectiveSecurityHealthAnalyticsCustomModuleRequest").msgclass
        GetSecurityHealthAnalyticsCustomModuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetSecurityHealthAnalyticsCustomModuleRequest").msgclass
        GetSourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GetSourceRequest").msgclass
        GroupAssetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GroupAssetsRequest").msgclass
        GroupAssetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GroupAssetsResponse").msgclass
        GroupFindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GroupFindingsRequest").msgclass
        GroupFindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GroupFindingsResponse").msgclass
        GroupResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.GroupResult").msgclass
        ListDescendantSecurityHealthAnalyticsCustomModulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListDescendantSecurityHealthAnalyticsCustomModulesRequest").msgclass
        ListDescendantSecurityHealthAnalyticsCustomModulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListDescendantSecurityHealthAnalyticsCustomModulesResponse").msgclass
        ListMuteConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListMuteConfigsRequest").msgclass
        ListMuteConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListMuteConfigsResponse").msgclass
        ListNotificationConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListNotificationConfigsRequest").msgclass
        ListNotificationConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListNotificationConfigsResponse").msgclass
        ListEffectiveSecurityHealthAnalyticsCustomModulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListEffectiveSecurityHealthAnalyticsCustomModulesRequest").msgclass
        ListEffectiveSecurityHealthAnalyticsCustomModulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse").msgclass
        ListSecurityHealthAnalyticsCustomModulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListSecurityHealthAnalyticsCustomModulesRequest").msgclass
        ListSecurityHealthAnalyticsCustomModulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListSecurityHealthAnalyticsCustomModulesResponse").msgclass
        ListSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListSourcesRequest").msgclass
        ListSourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListSourcesResponse").msgclass
        ListAssetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListAssetsRequest").msgclass
        ListAssetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListAssetsResponse").msgclass
        ListAssetsResponse::ListAssetsResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult").msgclass
        ListAssetsResponse::ListAssetsResult::StateChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListAssetsResponse.ListAssetsResult.StateChange").enummodule
        ListFindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListFindingsRequest").msgclass
        ListFindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListFindingsResponse").msgclass
        ListFindingsResponse::ListFindingsResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult").msgclass
        ListFindingsResponse::ListFindingsResult::Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.Resource").msgclass
        ListFindingsResponse::ListFindingsResult::StateChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListFindingsResponse.ListFindingsResult.StateChange").enummodule
        SetFindingStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.SetFindingStateRequest").msgclass
        SetMuteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.SetMuteRequest").msgclass
        RunAssetDiscoveryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.RunAssetDiscoveryRequest").msgclass
        UpdateExternalSystemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateExternalSystemRequest").msgclass
        UpdateFindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateFindingRequest").msgclass
        UpdateMuteConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateMuteConfigRequest").msgclass
        UpdateNotificationConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateNotificationConfigRequest").msgclass
        UpdateOrganizationSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateOrganizationSettingsRequest").msgclass
        UpdateSecurityHealthAnalyticsCustomModuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateSecurityHealthAnalyticsCustomModuleRequest").msgclass
        UpdateSourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateSourceRequest").msgclass
        UpdateSecurityMarksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateSecurityMarksRequest").msgclass
        CreateBigQueryExportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.CreateBigQueryExportRequest").msgclass
        UpdateBigQueryExportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.UpdateBigQueryExportRequest").msgclass
        ListBigQueryExportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListBigQueryExportsRequest").msgclass
        ListBigQueryExportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ListBigQueryExportsResponse").msgclass
        DeleteBigQueryExportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.DeleteBigQueryExportRequest").msgclass
      end
    end
  end
end
