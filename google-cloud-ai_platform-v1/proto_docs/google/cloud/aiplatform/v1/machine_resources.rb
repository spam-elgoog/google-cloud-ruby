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
    module AIPlatform
      module V1
        # Specification of a single machine.
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     Immutable. The type of the machine.
        #
        #     See the [list of machine types supported for
        #     prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
        #
        #     See the [list of machine types supported for custom
        #     training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
        #
        #     For {::Google::Cloud::AIPlatform::V1::DeployedModel DeployedModel} this field is
        #     optional, and the default value is `n1-standard-2`. For
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob} or as
        #     part of {::Google::Cloud::AIPlatform::V1::WorkerPoolSpec WorkerPoolSpec} this
        #     field is required.
        # @!attribute [rw] accelerator_type
        #   @return [::Google::Cloud::AIPlatform::V1::AcceleratorType]
        #     Immutable. The type of accelerator(s) that may be attached to the machine
        #     as per
        #     {::Google::Cloud::AIPlatform::V1::MachineSpec#accelerator_count accelerator_count}.
        # @!attribute [rw] accelerator_count
        #   @return [::Integer]
        #     The number of accelerators to attach to the machine.
        class MachineSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A description of resources that are dedicated to a DeployedModel, and
        # that need a higher degree of manual configuration.
        # @!attribute [rw] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Required. Immutable. The specification of a single machine used by the
        #     prediction.
        # @!attribute [rw] min_replica_count
        #   @return [::Integer]
        #     Required. Immutable. The minimum number of machine replicas this
        #     DeployedModel will be always deployed on. This value must be greater than
        #     or equal to 1.
        #
        #     If traffic against the DeployedModel increases, it may dynamically be
        #     deployed onto more replicas, and as traffic decreases, some of these extra
        #     replicas may be freed.
        # @!attribute [rw] max_replica_count
        #   @return [::Integer]
        #     Immutable. The maximum number of replicas this DeployedModel may be
        #     deployed on when the traffic against it increases. If the requested value
        #     is too large, the deployment will error, but if deployment succeeds then
        #     the ability to scale the model to that many replicas is guaranteed (barring
        #     service outages). If traffic against the DeployedModel increases beyond
        #     what its replicas at maximum may handle, a portion of the traffic will be
        #     dropped. If this value is not provided, will use
        #     {::Google::Cloud::AIPlatform::V1::DedicatedResources#min_replica_count min_replica_count}
        #     as the default value.
        #
        #     The value of this field impacts the charge against Vertex CPU and GPU
        #     quotas. Specifically, you will be charged for (max_replica_count *
        #     number of cores in the selected machine type) and (max_replica_count *
        #     number of GPUs per replica in the selected machine type).
        # @!attribute [rw] autoscaling_metric_specs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::AutoscalingMetricSpec>]
        #     Immutable. The metric specifications that overrides a resource
        #     utilization metric (CPU utilization, accelerator's duty cycle, and so on)
        #     target value (default to 60 if not set). At most one entry is allowed per
        #     metric.
        #
        #     If
        #     {::Google::Cloud::AIPlatform::V1::MachineSpec#accelerator_count machine_spec.accelerator_count}
        #     is above 0, the autoscaling will be based on both CPU utilization and
        #     accelerator's duty cycle metrics and scale up when either metrics exceeds
        #     its target value while scale down if both metrics are under their target
        #     value. The default target value is 60 for both metrics.
        #
        #     If
        #     {::Google::Cloud::AIPlatform::V1::MachineSpec#accelerator_count machine_spec.accelerator_count}
        #     is 0, the autoscaling will be based on CPU utilization metric only with
        #     default target value 60 if not explicitly set.
        #
        #     For example, in the case of Online Prediction, if you want to override
        #     target CPU utilization to 80, you should set
        #     {::Google::Cloud::AIPlatform::V1::AutoscalingMetricSpec#metric_name autoscaling_metric_specs.metric_name}
        #     to `aiplatform.googleapis.com/prediction/online/cpu/utilization` and
        #     {::Google::Cloud::AIPlatform::V1::AutoscalingMetricSpec#target autoscaling_metric_specs.target}
        #     to `80`.
        class DedicatedResources
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A description of resources that to large degree are decided by Vertex AI,
        # and require only a modest additional configuration.
        # Each Model supporting these resources documents its specific guidelines.
        # @!attribute [rw] min_replica_count
        #   @return [::Integer]
        #     Immutable. The minimum number of replicas this DeployedModel will be always
        #     deployed on. If traffic against it increases, it may dynamically be
        #     deployed onto more replicas up to
        #     {::Google::Cloud::AIPlatform::V1::AutomaticResources#max_replica_count max_replica_count},
        #     and as traffic decreases, some of these extra replicas may be freed. If the
        #     requested value is too large, the deployment will error.
        # @!attribute [rw] max_replica_count
        #   @return [::Integer]
        #     Immutable. The maximum number of replicas this DeployedModel may be
        #     deployed on when the traffic against it increases. If the requested value
        #     is too large, the deployment will error, but if deployment succeeds then
        #     the ability to scale the model to that many replicas is guaranteed (barring
        #     service outages). If traffic against the DeployedModel increases beyond
        #     what its replicas at maximum may handle, a portion of the traffic will be
        #     dropped. If this value is not provided, a no upper bound for scaling under
        #     heavy traffic will be assume, though Vertex AI may be unable to scale
        #     beyond certain replica number.
        class AutomaticResources
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A description of resources that are used for performing batch operations, are
        # dedicated to a Model, and need manual configuration.
        # @!attribute [rw] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Required. Immutable. The specification of a single machine.
        # @!attribute [rw] starting_replica_count
        #   @return [::Integer]
        #     Immutable. The number of machine replicas used at the start of the batch
        #     operation. If not set, Vertex AI decides starting number, not greater than
        #     {::Google::Cloud::AIPlatform::V1::BatchDedicatedResources#max_replica_count max_replica_count}
        # @!attribute [rw] max_replica_count
        #   @return [::Integer]
        #     Immutable. The maximum number of machine replicas the batch operation may
        #     be scaled to. The default value is 10.
        class BatchDedicatedResources
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Statistics information about resource consumption.
        # @!attribute [r] replica_hours
        #   @return [::Float]
        #     Output only. The number of replica hours used. Note that many replicas may
        #     run in parallel, and additionally any given work may be queued for some
        #     time. Therefore this value is not strictly related to wall time.
        class ResourcesConsumed
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the spec of disk options.
        # @!attribute [rw] boot_disk_type
        #   @return [::String]
        #     Type of the boot disk (default is "pd-ssd").
        #     Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or
        #     "pd-standard" (Persistent Disk Hard Disk Drive).
        # @!attribute [rw] boot_disk_size_gb
        #   @return [::Integer]
        #     Size in GB of the boot disk (default is 100GB).
        class DiskSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a mount configuration for Network File System (NFS) to mount.
        # @!attribute [rw] server
        #   @return [::String]
        #     Required. IP address of the NFS server.
        # @!attribute [rw] path
        #   @return [::String]
        #     Required. Source path exported from NFS server.
        #     Has to start with '/', and combined with the ip address, it indicates
        #     the source mount path in the form of `server:path`
        # @!attribute [rw] mount_point
        #   @return [::String]
        #     Required. Destination mount path. The NFS will be mounted for the user
        #     under /mnt/nfs/<mount_point>
        class NfsMount
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The metric specification that defines the target resource utilization
        # (CPU utilization, accelerator's duty cycle, and so on) for calculating the
        # desired replica count.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     Required. The resource metric name.
        #     Supported metrics:
        #
        #     * For Online Prediction:
        #     * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle`
        #     * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
        # @!attribute [rw] target
        #   @return [::Integer]
        #     The target resource utilization in percentage (1% - 100%) for the given
        #     metric; once the real usage deviates from the target by a certain
        #     percentage, the machine replicas change. The default value is 60
        #     (representing 60%) if not provided.
        class AutoscalingMetricSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
