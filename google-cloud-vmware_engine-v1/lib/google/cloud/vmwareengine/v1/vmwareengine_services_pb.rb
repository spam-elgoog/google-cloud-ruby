# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/vmwareengine/v1/vmwareengine.proto for package 'Google.Cloud.VmwareEngine.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/vmwareengine/v1/vmwareengine_pb'

module Google
  module Cloud
    module VmwareEngine
      module V1
        module VmwareEngine
          # VMwareEngine manages VMware's private clusters in the Cloud.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.vmwareengine.v1.VmwareEngine'

            # Lists `PrivateCloud` resources in a given project and location.
            rpc :ListPrivateClouds, ::Google::Cloud::VmwareEngine::V1::ListPrivateCloudsRequest, ::Google::Cloud::VmwareEngine::V1::ListPrivateCloudsResponse
            # Retrieves a `PrivateCloud` resource by its resource name.
            rpc :GetPrivateCloud, ::Google::Cloud::VmwareEngine::V1::GetPrivateCloudRequest, ::Google::Cloud::VmwareEngine::V1::PrivateCloud
            # Creates a new `PrivateCloud` resource in a given project and location.
            # Private clouds can only be created in zones, regional private clouds are
            # not supported.
            #
            # Creating a private cloud also creates a [management
            # cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components)
            # for that private cloud.
            rpc :CreatePrivateCloud, ::Google::Cloud::VmwareEngine::V1::CreatePrivateCloudRequest, ::Google::Longrunning::Operation
            # Modifies a `PrivateCloud` resource. Only the following fields can be
            # updated: `description`.
            # Only fields specified in `updateMask` are applied.
            #
            # During operation processing, the resource is temporarily in the `ACTIVE`
            # state before the operation fully completes. For that period of time, you
            # can't update the resource. Use the operation status to determine when the
            # processing fully completes.
            rpc :UpdatePrivateCloud, ::Google::Cloud::VmwareEngine::V1::UpdatePrivateCloudRequest, ::Google::Longrunning::Operation
            # Schedules a `PrivateCloud` resource for deletion.
            #
            # A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state`
            # set to `DELETED` and `expireTime` set to the time when deletion is final
            # and can no longer be reversed. The delete operation is marked as done
            # as soon as the `PrivateCloud` is successfully scheduled for deletion
            # (this also applies when `delayHours` is set to zero), and the operation is
            # not kept in pending state until `PrivateCloud` is purged.
            # `PrivateCloud` can be restored using `UndeletePrivateCloud` method before
            # the `expireTime` elapses. When `expireTime` is reached, deletion is final
            # and all private cloud resources are irreversibly removed and billing stops.
            # During the final removal process, `PrivateCloud.state` is set to `PURGING`.
            # `PrivateCloud` can be polled using standard `GET` method for the whole
            # period of deletion and purging. It will not be returned only
            # when it is completely purged.
            rpc :DeletePrivateCloud, ::Google::Cloud::VmwareEngine::V1::DeletePrivateCloudRequest, ::Google::Longrunning::Operation
            # Restores a private cloud that was previously scheduled for deletion by
            # `DeletePrivateCloud`. A `PrivateCloud` resource scheduled for deletion has
            # `PrivateCloud.state` set to `DELETED` and `PrivateCloud.expireTime` set to
            # the time when deletion can no longer be reversed.
            rpc :UndeletePrivateCloud, ::Google::Cloud::VmwareEngine::V1::UndeletePrivateCloudRequest, ::Google::Longrunning::Operation
            # Lists `Cluster` resources in a given private cloud.
            rpc :ListClusters, ::Google::Cloud::VmwareEngine::V1::ListClustersRequest, ::Google::Cloud::VmwareEngine::V1::ListClustersResponse
            # Retrieves a `Cluster` resource by its resource name.
            rpc :GetCluster, ::Google::Cloud::VmwareEngine::V1::GetClusterRequest, ::Google::Cloud::VmwareEngine::V1::Cluster
            # Creates a new cluster in a given private cloud.
            # Creating a new cluster provides additional nodes for
            # use in the parent private cloud and requires sufficient [node
            # quota](https://cloud.google.com/vmware-engine/quotas).
            rpc :CreateCluster, ::Google::Cloud::VmwareEngine::V1::CreateClusterRequest, ::Google::Longrunning::Operation
            # Modifies a `Cluster` resource. Only the following fields can be updated:
            # `node_type_configs.*.node_count`. Only fields specified in `updateMask` are
            # applied.
            #
            # During operation processing, the resource is temporarily in the `ACTIVE`
            # state before the operation fully completes. For that period of time, you
            # can't update the resource. Use the operation status to determine when the
            # processing fully completes.
            rpc :UpdateCluster, ::Google::Cloud::VmwareEngine::V1::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Deletes a `Cluster` resource. To avoid unintended data loss, migrate or
            # gracefully shut down any workloads running on the cluster before deletion.
            # You cannot delete the management cluster of a private cloud using this
            # method.
            rpc :DeleteCluster, ::Google::Cloud::VmwareEngine::V1::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Lists subnets in a given private cloud.
            rpc :ListSubnets, ::Google::Cloud::VmwareEngine::V1::ListSubnetsRequest, ::Google::Cloud::VmwareEngine::V1::ListSubnetsResponse
            # Lists node types
            rpc :ListNodeTypes, ::Google::Cloud::VmwareEngine::V1::ListNodeTypesRequest, ::Google::Cloud::VmwareEngine::V1::ListNodeTypesResponse
            # Gets details of a single `NodeType`.
            rpc :GetNodeType, ::Google::Cloud::VmwareEngine::V1::GetNodeTypeRequest, ::Google::Cloud::VmwareEngine::V1::NodeType
            # Gets details of credentials for NSX appliance.
            rpc :ShowNsxCredentials, ::Google::Cloud::VmwareEngine::V1::ShowNsxCredentialsRequest, ::Google::Cloud::VmwareEngine::V1::Credentials
            # Gets details of credentials for Vcenter appliance.
            rpc :ShowVcenterCredentials, ::Google::Cloud::VmwareEngine::V1::ShowVcenterCredentialsRequest, ::Google::Cloud::VmwareEngine::V1::Credentials
            # Resets credentials of the NSX appliance.
            rpc :ResetNsxCredentials, ::Google::Cloud::VmwareEngine::V1::ResetNsxCredentialsRequest, ::Google::Longrunning::Operation
            # Resets credentials of the Vcenter appliance.
            rpc :ResetVcenterCredentials, ::Google::Cloud::VmwareEngine::V1::ResetVcenterCredentialsRequest, ::Google::Longrunning::Operation
            # Creates a new HCX activation key in a given private cloud.
            rpc :CreateHcxActivationKey, ::Google::Cloud::VmwareEngine::V1::CreateHcxActivationKeyRequest, ::Google::Longrunning::Operation
            # Lists `HcxActivationKey` resources in a given private cloud.
            rpc :ListHcxActivationKeys, ::Google::Cloud::VmwareEngine::V1::ListHcxActivationKeysRequest, ::Google::Cloud::VmwareEngine::V1::ListHcxActivationKeysResponse
            # Retrieves a `HcxActivationKey` resource by its resource name.
            rpc :GetHcxActivationKey, ::Google::Cloud::VmwareEngine::V1::GetHcxActivationKeyRequest, ::Google::Cloud::VmwareEngine::V1::HcxActivationKey
            # Retrieves a `NetworkPolicy` resource by its resource name.
            rpc :GetNetworkPolicy, ::Google::Cloud::VmwareEngine::V1::GetNetworkPolicyRequest, ::Google::Cloud::VmwareEngine::V1::NetworkPolicy
            # Lists `NetworkPolicy` resources in a specified project and location.
            rpc :ListNetworkPolicies, ::Google::Cloud::VmwareEngine::V1::ListNetworkPoliciesRequest, ::Google::Cloud::VmwareEngine::V1::ListNetworkPoliciesResponse
            # Creates a new network policy in a given VMware Engine network of a
            # project and location (region). A new network policy cannot be created if
            # another network policy already exists in the same scope.
            rpc :CreateNetworkPolicy, ::Google::Cloud::VmwareEngine::V1::CreateNetworkPolicyRequest, ::Google::Longrunning::Operation
            # Modifies a `NetworkPolicy` resource. Only the following fields can be
            # updated: `internet_access`, `external_ip`, `edge_services_cidr`.
            # Only fields specified in `updateMask` are applied. When updating a network
            # policy, the external IP network service can only be disabled if there are
            # no external IP addresses present in the scope of the policy. Also, a
            # `NetworkService` cannot be updated when `NetworkService.state` is set
            # to `RECONCILING`.
            #
            # During operation processing, the resource is temporarily in the `ACTIVE`
            # state before the operation fully completes. For that period of time, you
            # can't update the resource. Use the operation status to determine when the
            # processing fully completes.
            rpc :UpdateNetworkPolicy, ::Google::Cloud::VmwareEngine::V1::UpdateNetworkPolicyRequest, ::Google::Longrunning::Operation
            # Deletes a `NetworkPolicy` resource. A network policy cannot be deleted
            # when `NetworkService.state` is set to `RECONCILING` for either its external
            # IP or internet access service.
            rpc :DeleteNetworkPolicy, ::Google::Cloud::VmwareEngine::V1::DeleteNetworkPolicyRequest, ::Google::Longrunning::Operation
            # Creates a new VMware Engine network that can be used by a private cloud.
            rpc :CreateVmwareEngineNetwork, ::Google::Cloud::VmwareEngine::V1::CreateVmwareEngineNetworkRequest, ::Google::Longrunning::Operation
            # Modifies a VMware Engine network resource. Only the following fields can be
            # updated: `description`. Only fields specified in `updateMask` are
            # applied.
            rpc :UpdateVmwareEngineNetwork, ::Google::Cloud::VmwareEngine::V1::UpdateVmwareEngineNetworkRequest, ::Google::Longrunning::Operation
            # Deletes a `VmwareEngineNetwork` resource. You can only delete a VMware
            # Engine network after all resources that refer to it are deleted. For
            # example, a private cloud, a network peering, and a network policy can all
            # refer to the same VMware Engine network.
            rpc :DeleteVmwareEngineNetwork, ::Google::Cloud::VmwareEngine::V1::DeleteVmwareEngineNetworkRequest, ::Google::Longrunning::Operation
            # Retrieves a `VmwareEngineNetwork` resource by its resource name. The
            # resource contains details of the VMware Engine network, such as its VMware
            # Engine network type, peered networks in a service project, and state
            # (for example, `CREATING`, `ACTIVE`, `DELETING`).
            rpc :GetVmwareEngineNetwork, ::Google::Cloud::VmwareEngine::V1::GetVmwareEngineNetworkRequest, ::Google::Cloud::VmwareEngine::V1::VmwareEngineNetwork
            # Lists `VmwareEngineNetwork` resources in a given project and location.
            rpc :ListVmwareEngineNetworks, ::Google::Cloud::VmwareEngine::V1::ListVmwareEngineNetworksRequest, ::Google::Cloud::VmwareEngine::V1::ListVmwareEngineNetworksResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
