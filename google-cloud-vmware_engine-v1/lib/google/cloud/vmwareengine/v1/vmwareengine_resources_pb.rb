# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vmwareengine/v1/vmwareengine_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/vmwareengine/v1/vmwareengine_resources.proto", :syntax => :proto3) do
    add_message "google.cloud.vmwareengine.v1.NetworkConfig" do
      optional :management_cidr, :string, 4
      optional :vmware_engine_network, :string, 5
      optional :vmware_engine_network_canonical, :string, 6
      optional :management_ip_address_layout_version, :int32, 8
    end
    add_message "google.cloud.vmwareengine.v1.NodeTypeConfig" do
      optional :node_count, :int32, 1
      optional :custom_core_count, :int32, 2
    end
    add_message "google.cloud.vmwareengine.v1.PrivateCloud" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :delete_time, :message, 4, "google.protobuf.Timestamp"
      optional :expire_time, :message, 5, "google.protobuf.Timestamp"
      optional :state, :enum, 8, "google.cloud.vmwareengine.v1.PrivateCloud.State"
      optional :network_config, :message, 9, "google.cloud.vmwareengine.v1.NetworkConfig"
      optional :management_cluster, :message, 10, "google.cloud.vmwareengine.v1.PrivateCloud.ManagementCluster"
      optional :description, :string, 11
      optional :hcx, :message, 17, "google.cloud.vmwareengine.v1.Hcx"
      optional :nsx, :message, 18, "google.cloud.vmwareengine.v1.Nsx"
      optional :vcenter, :message, 19, "google.cloud.vmwareengine.v1.Vcenter"
      optional :uid, :string, 20
    end
    add_message "google.cloud.vmwareengine.v1.PrivateCloud.ManagementCluster" do
      optional :cluster_id, :string, 1
      map :node_type_configs, :string, :message, 7, "google.cloud.vmwareengine.v1.NodeTypeConfig"
    end
    add_enum "google.cloud.vmwareengine.v1.PrivateCloud.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
      value :UPDATING, 3
      value :FAILED, 5
      value :DELETED, 6
      value :PURGING, 7
    end
    add_message "google.cloud.vmwareengine.v1.Cluster" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :state, :enum, 6, "google.cloud.vmwareengine.v1.Cluster.State"
      optional :management, :bool, 7
      optional :uid, :string, 14
      map :node_type_configs, :string, :message, 16, "google.cloud.vmwareengine.v1.NodeTypeConfig"
    end
    add_enum "google.cloud.vmwareengine.v1.Cluster.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
      value :UPDATING, 3
      value :DELETING, 4
      value :REPAIRING, 5
    end
    add_message "google.cloud.vmwareengine.v1.Subnet" do
      optional :name, :string, 1
      optional :ip_cidr_range, :string, 7
      optional :gateway_ip, :string, 8
      optional :type, :string, 11
      optional :state, :enum, 13, "google.cloud.vmwareengine.v1.Subnet.State"
    end
    add_enum "google.cloud.vmwareengine.v1.Subnet.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
      value :UPDATING, 3
      value :DELETING, 4
    end
    add_message "google.cloud.vmwareengine.v1.NodeType" do
      optional :name, :string, 1
      optional :node_type_id, :string, 2
      optional :display_name, :string, 3
      optional :virtual_cpu_count, :int32, 4
      optional :total_core_count, :int32, 5
      optional :memory_gb, :int32, 7
      optional :disk_size_gb, :int32, 8
      repeated :available_custom_core_counts, :int32, 11
    end
    add_message "google.cloud.vmwareengine.v1.Credentials" do
      optional :username, :string, 1
      optional :password, :string, 2
    end
    add_message "google.cloud.vmwareengine.v1.HcxActivationKey" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :state, :enum, 3, "google.cloud.vmwareengine.v1.HcxActivationKey.State"
      optional :activation_key, :string, 4
      optional :uid, :string, 5
    end
    add_enum "google.cloud.vmwareengine.v1.HcxActivationKey.State" do
      value :STATE_UNSPECIFIED, 0
      value :AVAILABLE, 1
      value :CONSUMED, 2
      value :CREATING, 3
    end
    add_message "google.cloud.vmwareengine.v1.Hcx" do
      optional :internal_ip, :string, 2
      optional :version, :string, 4
      optional :state, :enum, 5, "google.cloud.vmwareengine.v1.Hcx.State"
      optional :fqdn, :string, 6
    end
    add_enum "google.cloud.vmwareengine.v1.Hcx.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
    end
    add_message "google.cloud.vmwareengine.v1.Nsx" do
      optional :internal_ip, :string, 2
      optional :version, :string, 4
      optional :state, :enum, 5, "google.cloud.vmwareengine.v1.Nsx.State"
      optional :fqdn, :string, 6
    end
    add_enum "google.cloud.vmwareengine.v1.Nsx.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
    end
    add_message "google.cloud.vmwareengine.v1.Vcenter" do
      optional :internal_ip, :string, 2
      optional :version, :string, 4
      optional :state, :enum, 5, "google.cloud.vmwareengine.v1.Vcenter.State"
      optional :fqdn, :string, 6
    end
    add_enum "google.cloud.vmwareengine.v1.Vcenter.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
    end
    add_message "google.cloud.vmwareengine.v1.NetworkPolicy" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :internet_access, :message, 6, "google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService"
      optional :external_ip, :message, 7, "google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService"
      optional :edge_services_cidr, :string, 9
      optional :uid, :string, 10
      optional :vmware_engine_network, :string, 12
      optional :description, :string, 13
      optional :vmware_engine_network_canonical, :string, 14
    end
    add_message "google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService" do
      optional :enabled, :bool, 1
      optional :state, :enum, 2, "google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService.State"
    end
    add_enum "google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService.State" do
      value :STATE_UNSPECIFIED, 0
      value :UNPROVISIONED, 1
      value :RECONCILING, 2
      value :ACTIVE, 3
    end
    add_message "google.cloud.vmwareengine.v1.VmwareEngineNetwork" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :description, :string, 5
      repeated :vpc_networks, :message, 6, "google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork"
      optional :state, :enum, 7, "google.cloud.vmwareengine.v1.VmwareEngineNetwork.State"
      optional :type, :enum, 8, "google.cloud.vmwareengine.v1.VmwareEngineNetwork.Type"
      optional :uid, :string, 9
      optional :etag, :string, 10
    end
    add_message "google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork" do
      optional :type, :enum, 1, "google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork.Type"
      optional :network, :string, 2
    end
    add_enum "google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :INTRANET, 1
      value :INTERNET, 2
      value :GOOGLE_CLOUD, 3
    end
    add_enum "google.cloud.vmwareengine.v1.VmwareEngineNetwork.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :UPDATING, 3
      value :DELETING, 4
    end
    add_enum "google.cloud.vmwareengine.v1.VmwareEngineNetwork.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :LEGACY, 1
    end
  end
end

module Google
  module Cloud
    module VmwareEngine
      module V1
        NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NetworkConfig").msgclass
        NodeTypeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NodeTypeConfig").msgclass
        PrivateCloud = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.PrivateCloud").msgclass
        PrivateCloud::ManagementCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.PrivateCloud.ManagementCluster").msgclass
        PrivateCloud::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.PrivateCloud.State").enummodule
        Cluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Cluster").msgclass
        Cluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Cluster.State").enummodule
        Subnet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Subnet").msgclass
        Subnet::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Subnet.State").enummodule
        NodeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NodeType").msgclass
        Credentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Credentials").msgclass
        HcxActivationKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.HcxActivationKey").msgclass
        HcxActivationKey::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.HcxActivationKey.State").enummodule
        Hcx = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Hcx").msgclass
        Hcx::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Hcx.State").enummodule
        Nsx = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Nsx").msgclass
        Nsx::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Nsx.State").enummodule
        Vcenter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Vcenter").msgclass
        Vcenter::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.Vcenter.State").enummodule
        NetworkPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NetworkPolicy").msgclass
        NetworkPolicy::NetworkService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService").msgclass
        NetworkPolicy::NetworkService::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.NetworkPolicy.NetworkService.State").enummodule
        VmwareEngineNetwork = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.VmwareEngineNetwork").msgclass
        VmwareEngineNetwork::VpcNetwork = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork").msgclass
        VmwareEngineNetwork::VpcNetwork::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.VmwareEngineNetwork.VpcNetwork.Type").enummodule
        VmwareEngineNetwork::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.VmwareEngineNetwork.State").enummodule
        VmwareEngineNetwork::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vmwareengine.v1.VmwareEngineNetwork.Type").enummodule
      end
    end
  end
end
