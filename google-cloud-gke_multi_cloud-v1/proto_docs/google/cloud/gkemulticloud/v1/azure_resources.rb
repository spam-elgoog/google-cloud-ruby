# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module GkeMultiCloud
      module V1
        # An Anthos cluster running on Azure.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     Cluster names are formatted as
        #     `projects/<project-number>/locations/<region>/azureClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud Platform resource names.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A human readable description of this cluster.
        #     Cannot be longer than 255 UTF-8 encoded bytes.
        # @!attribute [rw] azure_region
        #   @return [::String]
        #     Required. The Azure region where the cluster runs.
        #
        #     Each Google Cloud region supports a subset of nearby Azure regions.
        #     You can call
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClusters::Client#get_azure_server_config GetAzureServerConfig}
        #     to list all supported Azure regions within a given Google Cloud region.
        # @!attribute [rw] resource_group_id
        #   @return [::String]
        #     Required. The ARM ID of the resource group where the cluster resources are
        #     deployed. For example:
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
        # @!attribute [rw] azure_client
        #   @return [::String]
        #     Optional. Name of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} that contains
        #     authentication configuration for how the Anthos Multi-Cloud API connects to
        #     Azure APIs.
        #
        #     The `AzureClient` resource must reside on the same Google Cloud Platform
        #     project and region as the `AzureCluster`.
        #
        #     `AzureClient` names are formatted as
        #     `projects/<project-number>/locations/<region>/azureClients/<client-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] networking
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureClusterNetworking]
        #     Required. Cluster-wide networking configuration.
        # @!attribute [rw] control_plane
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureControlPlane]
        #     Required. Configuration related to the cluster control plane.
        # @!attribute [rw] authorization
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureAuthorization]
        #     Required. Configuration related to the cluster RBAC settings.
        # @!attribute [rw] azure_services_authentication
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureServicesAuthentication]
        #     Optional. Authentication configuration for management of Azure resources.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureCluster::State]
        #     Output only. The current state of the cluster.
        # @!attribute [r] endpoint
        #   @return [::String]
        #     Output only. The endpoint of the cluster's API server.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the cluster.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently changes in flight to the cluster.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Allows clients to perform consistent read-modify-writes
        #     through optimistic concurrency control.
        #
        #     Can be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the cluster.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Keys can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [r] workload_identity_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::WorkloadIdentityConfig]
        #     Output only. Workload Identity settings.
        # @!attribute [r] cluster_ca_certificate
        #   @return [::String]
        #     Output only. PEM encoded x509 certificate of the cluster root of trust.
        # @!attribute [rw] fleet
        #   @return [::Google::Cloud::GkeMultiCloud::V1::Fleet]
        #     Required. Fleet configuration.
        # @!attribute [r] managed_resources
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureClusterResources]
        #     Output only. Managed Azure resources for this cluster.
        # @!attribute [rw] logging_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::LoggingConfig]
        #     Optional. Logging configuration for this cluster.
        # @!attribute [r] errors
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureClusterError>]
        #     Output only. A set of errors found in the cluster.
        # @!attribute [rw] monitoring_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::MonitoringConfig]
        #     Optional. Monitoring configuration for this cluster.
        class AzureCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The lifecycle state of the cluster.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the cluster is being created.
            PROVISIONING = 1

            # The RUNNING state indicates the cluster has been created and is fully
            # usable.
            RUNNING = 2

            # The RECONCILING state indicates that some work is actively being done on
            # the cluster, such as upgrading the control plane replicas.
            RECONCILING = 3

            # The STOPPING state indicates the cluster is being deleted.
            STOPPING = 4

            # The ERROR state indicates the cluster is in a broken unrecoverable
            # state.
            ERROR = 5

            # The DEGRADED state indicates the cluster requires user action to
            # restore full functionality.
            DEGRADED = 6
          end
        end

        # ClusterNetworking contains cluster-wide networking configuration.
        # @!attribute [rw] virtual_network_id
        #   @return [::String]
        #     Required. The Azure Resource Manager (ARM) ID of the VNet associated with
        #     your cluster.
        #
        #     All components in the cluster (i.e. control plane and node pools) run on a
        #     single VNet.
        #
        #     Example:
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.Network/virtualNetworks/<vnet-id>`
        #
        #     This field cannot be changed after creation.
        # @!attribute [rw] pod_address_cidr_blocks
        #   @return [::Array<::String>]
        #     Required. The IP address range of the pods in this cluster, in CIDR
        #     notation (e.g. `10.96.0.0/14`).
        #
        #     All pods in the cluster get assigned a unique IPv4 address from these
        #     ranges. Only a single range is supported.
        #
        #     This field cannot be changed after creation.
        # @!attribute [rw] service_address_cidr_blocks
        #   @return [::Array<::String>]
        #     Required. The IP address range for services in this cluster, in CIDR
        #     notation (e.g. `10.96.0.0/14`).
        #
        #     All services in the cluster get assigned a unique IPv4 address from these
        #     ranges. Only a single range is supported.
        #
        #     This field cannot be changed after creating a cluster.
        # @!attribute [rw] service_load_balancer_subnet_id
        #   @return [::String]
        #     Optional. The ARM ID of the subnet where Kubernetes private service type
        #     load balancers are deployed. When unspecified, it defaults to
        #     AzureControlPlane.subnet_id.
        #
        #     Example:
        #     "/subscriptions/d00494d6-6f3c-4280-bbb2-899e163d1d30/resourceGroups/anthos_cluster_gkeust4/providers/Microsoft.Network/virtualNetworks/gke-vnet-gkeust4/subnets/subnetid456"
        class AzureClusterNetworking
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AzureControlPlane represents the control plane configurations.
        # @!attribute [rw] version
        #   @return [::String]
        #     Required. The Kubernetes version to run on control plane replicas
        #     (e.g. `1.19.10-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClusters::Client#get_azure_server_config GetAzureServerConfig}.
        # @!attribute [rw] subnet_id
        #   @return [::String]
        #     Optional. The ARM ID of the default subnet for the control plane. The
        #     control plane VMs are deployed in this subnet, unless
        #     `AzureControlPlane.replica_placements` is specified. This subnet will also
        #     be used as default for `AzureControlPlane.endpoint_subnet_id` if
        #     `AzureControlPlane.endpoint_subnet_id` is not specified. Similarly it will
        #     be used as default for
        #     `AzureClusterNetworking.service_load_balancer_subnet_id`.
        #
        #     Example:
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.Network/virtualNetworks/<vnet-id>/subnets/default`.
        # @!attribute [rw] vm_size
        #   @return [::String]
        #     Optional. The Azure VM size name. Example: `Standard_DS2_v2`.
        #
        #     For available VM sizes, see
        #     https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions.
        #
        #     When unspecified, it defaults to `Standard_DS2_v2`.
        # @!attribute [rw] ssh_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureSshConfig]
        #     Required. SSH configuration for how to access the underlying control plane
        #     machines.
        # @!attribute [rw] root_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureDiskTemplate]
        #     Optional. Configuration related to the root volume provisioned for each
        #     control plane replica.
        #
        #     When unspecified, it defaults to 32-GiB Azure Disk.
        # @!attribute [rw] main_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureDiskTemplate]
        #     Optional. Configuration related to the main volume provisioned for each
        #     control plane replica.
        #     The main volume is in charge of storing all of the cluster's etcd state.
        #
        #     When unspecified, it defaults to a 8-GiB Azure Disk.
        # @!attribute [rw] database_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureDatabaseEncryption]
        #     Optional. Configuration related to application-layer secrets encryption.
        # @!attribute [rw] proxy_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureProxyConfig]
        #     Optional. Proxy configuration for outbound HTTP(S) traffic.
        # @!attribute [rw] config_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureConfigEncryption]
        #     Optional. Configuration related to vm config encryption.
        # @!attribute [rw] tags
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A set of tags to apply to all underlying control plane Azure
        #     resources.
        # @!attribute [rw] replica_placements
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::ReplicaPlacement>]
        #     Optional. Configuration for where to place the control plane replicas.
        #
        #     Up to three replica placement instances can be specified. If
        #     replica_placements is set, the replica placement instances will be applied
        #     to the three control plane replicas as evenly as possible.
        # @!attribute [rw] endpoint_subnet_id
        #   @return [::String]
        #     Optional. The ARM ID of the subnet where the control plane load balancer is
        #     deployed. When unspecified, it defaults to AzureControlPlane.subnet_id.
        #
        #     Example:
        #     "/subscriptions/d00494d6-6f3c-4280-bbb2-899e163d1d30/resourceGroups/anthos_cluster_gkeust4/providers/Microsoft.Network/virtualNetworks/gke-vnet-gkeust4/subnets/subnetid123"
        class AzureControlPlane
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class TagsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration for the placement of a control plane replica.
        # @!attribute [rw] subnet_id
        #   @return [::String]
        #     Required. For a given replica, the ARM ID of the subnet where the control
        #     plane VM is deployed. Make sure it's a subnet under the virtual network in
        #     the cluster configuration.
        # @!attribute [rw] azure_availability_zone
        #   @return [::String]
        #     Required. For a given replica, the Azure availability zone where to
        #     provision the control plane VM and the ETCD disk.
        class ReplicaPlacement
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a proxy config stored in Azure Key Vault.
        # @!attribute [rw] resource_group_id
        #   @return [::String]
        #     The ARM ID the of the resource group containing proxy keyvault.
        #
        #     Resource group ids are formatted as
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`.
        # @!attribute [rw] secret_id
        #   @return [::String]
        #     The URL the of the proxy setting secret with its version.
        #
        #     The secret must be a JSON encoded proxy configuration
        #     as described in
        #     https://cloud.google.com/anthos/clusters/docs/multi-cloud/azure/how-to/use-a-proxy#create_a_proxy_configuration_file
        #
        #     Secret ids are formatted as
        #     `https://<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
        class AzureProxyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration related to application-layer secrets encryption.
        #
        # Anthos clusters on Azure encrypts your Kubernetes data at rest
        # in etcd using Azure Key Vault.
        # @!attribute [rw] key_id
        #   @return [::String]
        #     Required. The ARM ID of the Azure Key Vault key to encrypt / decrypt data.
        #
        #     For example:
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.KeyVault/vaults/<key-vault-id>/keys/<key-name>`
        #     Encryption will always take the latest version of the key and hence
        #     specific version is not supported.
        class AzureDatabaseEncryption
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration related to config data encryption.
        #
        # Azure VM bootstrap secret is envelope encrypted with the provided key vault
        # key.
        # @!attribute [rw] key_id
        #   @return [::String]
        #     Required. The ARM ID of the Azure Key Vault key to encrypt / decrypt config
        #     data.
        #
        #     For example:
        #     `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.KeyVault/vaults/<key-vault-id>/keys/<key-name>`
        # @!attribute [rw] public_key
        #   @return [::String]
        #     Optional. RSA key of the Azure Key Vault public key to use for encrypting
        #     the data.
        #
        #     This key must be formatted as a PEM-encoded SubjectPublicKeyInfo (RFC 5280)
        #     in ASN.1 DER form. The string must be comprised of a single PEM block of
        #     type "PUBLIC KEY".
        class AzureConfigEncryption
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for Azure Disks.
        # @!attribute [rw] size_gib
        #   @return [::Integer]
        #     Optional. The size of the disk, in GiBs.
        #
        #     When unspecified, a default value is provided. See the specific reference
        #     in the parent resource.
        class AzureDiskTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # `AzureClient` resources hold client authentication information needed by the
        # Anthos Multi-Cloud API to manage Azure resources on your Azure subscription.
        #
        # When an {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} is
        # created, an `AzureClient` resource needs to be provided and all operations on
        # Azure resources associated to that cluster will authenticate to Azure
        # services using the given client.
        #
        # `AzureClient` resources are immutable and cannot be modified upon creation.
        #
        # Each `AzureClient` resource is bound to a single Azure Active Directory
        # Application and tenant.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     `AzureClient` resource names are formatted as
        #     `projects/<project-number>/locations/<region>/azureClients/<client-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] tenant_id
        #   @return [::String]
        #     Required. The Azure Active Directory Tenant ID.
        # @!attribute [rw] application_id
        #   @return [::String]
        #     Required. The Azure Active Directory Application ID.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently pending changes to the client.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the resource.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Keys can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [r] pem_certificate
        #   @return [::String]
        #     Output only. The PEM encoded x509 certificate.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the client.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this client was last updated.
        class AzureClient
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration related to the cluster RBAC settings.
        # @!attribute [rw] admin_users
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureClusterUser>]
        #     Required. Users that can perform operations as a cluster admin. A managed
        #     ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
        #     to the users. Up to ten admin users can be provided.
        #
        #     For more info on RBAC, see
        #     https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
        class AzureAuthorization
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Authentication configuration for the management of Azure resources.
        # @!attribute [rw] tenant_id
        #   @return [::String]
        #     Required. The Azure Active Directory Tenant ID.
        # @!attribute [rw] application_id
        #   @return [::String]
        #     Required. The Azure Active Directory Application ID.
        class AzureServicesAuthentication
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identities of a user-type subject for Azure clusters.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. The name of the user, e.g. `my-gcp-id@gmail.com`.
        class AzureClusterUser
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Anthos node pool running on Azure.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     Node pool names are formatted as
        #     `projects/<project-number>/locations/<region>/azureClusters/<cluster-id>/azureNodePools/<node-pool-id>`.
        #
        #     For more details on Google Cloud resource names,
        #     see [Resource Names](https://cloud.google.com/apis/design/resource_names)
        # @!attribute [rw] version
        #   @return [::String]
        #     Required. The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this
        #     node pool.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureNodeConfig]
        #     Required. The node configuration of the node pool.
        # @!attribute [rw] subnet_id
        #   @return [::String]
        #     Required. The ARM ID of the subnet where the node pool VMs run. Make sure
        #     it's a subnet under the virtual network in the cluster configuration.
        # @!attribute [rw] autoscaling
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureNodePoolAutoscaling]
        #     Required. Autoscaler configuration for this node pool.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureNodePool::State]
        #     Output only. The current state of the node pool.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the node pool.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently pending changes to the node
        #     pool.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this node pool was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this node pool was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Allows clients to perform consistent read-modify-writes
        #     through optimistic concurrency control.
        #
        #     Can be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the node pool.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Keys can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [rw] max_pods_constraint
        #   @return [::Google::Cloud::GkeMultiCloud::V1::MaxPodsConstraint]
        #     Required. The constraint on the maximum number of pods that can be run
        #     simultaneously on a node in the node pool.
        # @!attribute [rw] azure_availability_zone
        #   @return [::String]
        #     Optional. The Azure availability zone of the nodes in this nodepool.
        #
        #     When unspecified, it defaults to `1`.
        # @!attribute [r] errors
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureNodePoolError>]
        #     Output only. A set of errors found in the node pool.
        class AzureNodePool
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The lifecycle state of the node pool.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the node pool is being created.
            PROVISIONING = 1

            # The RUNNING state indicates the node pool has been created and is fully
            # usable.
            RUNNING = 2

            # The RECONCILING state indicates that the node pool is being reconciled.
            RECONCILING = 3

            # The STOPPING state indicates the node pool is being deleted.
            STOPPING = 4

            # The ERROR state indicates the node pool is in a broken unrecoverable
            # state.
            ERROR = 5

            # The DEGRADED state indicates the node pool requires user action to
            # restore full functionality.
            DEGRADED = 6
          end
        end

        # Parameters that describe the configuration of all node machines
        # on a given node pool.
        # @!attribute [rw] vm_size
        #   @return [::String]
        #     Optional. The Azure VM size name. Example: `Standard_DS2_v2`.
        #
        #     See [Supported VM
        #     sizes](/anthos/clusters/docs/azure/reference/supported-vms) for options.
        #
        #     When unspecified, it defaults to `Standard_DS2_v2`.
        # @!attribute [rw] root_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureDiskTemplate]
        #     Optional. Configuration related to the root volume provisioned for each
        #     node pool machine.
        #
        #     When unspecified, it defaults to a 32-GiB Azure Disk.
        # @!attribute [rw] tags
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A set of tags to apply to all underlying Azure resources for this
        #     node pool. This currently only includes Virtual Machine Scale Sets.
        #
        #     Specify at most 50 pairs containing alphanumerics, spaces, and symbols
        #     (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to
        #     255 Unicode characters.
        # @!attribute [rw] image_type
        #   @return [::String]
        #     Optional. The OS image type to use on node pool instances.
        #     Can have a value of `ubuntu`, or `windows` if the cluster enables
        #     the Windows node pool preview feature.
        #
        #     When unspecified, it defaults to `ubuntu`.
        # @!attribute [rw] ssh_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureSshConfig]
        #     Required. SSH configuration for how to access the node pool machines.
        # @!attribute [rw] proxy_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureProxyConfig]
        #     Optional. Proxy configuration for outbound HTTP(S) traffic.
        # @!attribute [rw] config_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureConfigEncryption]
        #     Optional. Configuration related to vm config encryption.
        # @!attribute [rw] taints
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::NodeTaint>]
        #     Optional. The initial taints assigned to nodes of this node pool.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The initial labels assigned to nodes of this node pool. An object
        #     containing a list of "key": value pairs. Example: { "name": "wrench",
        #     "mass": "1.3kg", "count": "3" }.
        class AzureNodeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class TagsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration related to Kubernetes cluster autoscaler.
        #
        # The Kubernetes cluster autoscaler will automatically adjust the
        # size of the node pool based on the cluster load.
        # @!attribute [rw] min_node_count
        #   @return [::Integer]
        #     Required. Minimum number of nodes in the node pool. Must be greater than or
        #     equal to 1 and less than or equal to max_node_count.
        # @!attribute [rw] max_node_count
        #   @return [::Integer]
        #     Required. Maximum number of nodes in the node pool. Must be greater than or
        #     equal to min_node_count and less than or equal to 50.
        class AzureNodePoolAutoscaling
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AzureServerConfig contains information about a Google Cloud location, such as
        # supported Azure regions and Kubernetes versions.
        # @!attribute [rw] name
        #   @return [::String]
        #     The `AzureServerConfig` resource name.
        #
        #     `AzureServerConfig` names are formatted as
        #     `projects/<project-number>/locations/<region>/azureServerConfig`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud Platform resource names.
        # @!attribute [rw] valid_versions
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureK8sVersionInfo>]
        #     List of valid Kubernetes versions.
        # @!attribute [rw] supported_azure_regions
        #   @return [::Array<::String>]
        #     The list of supported Azure regions.
        class AzureServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information about a supported Kubernetes version.
        # @!attribute [rw] version
        #   @return [::String]
        #     A supported Kubernetes version (for example, `1.19.10-gke.1000`)
        class AzureK8sVersionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # SSH configuration for Azure resources.
        # @!attribute [rw] authorized_key
        #   @return [::String]
        #     Required. The SSH public key data for VMs managed by Anthos. This accepts
        #     the authorized_keys file format used in OpenSSH according to the sshd(8)
        #     manual page.
        class AzureSshConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Managed Azure resources for the cluster.
        #
        # The values could change and be empty, depending on the state of the cluster.
        # @!attribute [r] network_security_group_id
        #   @return [::String]
        #     Output only. The ARM ID of the cluster network security group.
        # @!attribute [r] control_plane_application_security_group_id
        #   @return [::String]
        #     Output only. The ARM ID of the control plane application security group.
        class AzureClusterResources
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AzureClusterError describes errors found on Azure clusters.
        # @!attribute [rw] message
        #   @return [::String]
        #     Human-friendly description of the error.
        class AzureClusterError
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AzureNodePoolError describes errors found on Azure node pools.
        # @!attribute [rw] message
        #   @return [::String]
        #     Human-friendly description of the error.
        class AzureNodePoolError
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
