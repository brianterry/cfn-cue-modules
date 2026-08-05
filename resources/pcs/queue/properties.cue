package queue

#Properties: {
	// The ID of the cluster of the queue.
	ClusterId: string
	// The list of compute node group configurations associated with the queue. Queues assign jobs to associated compute node groups.
	ComputeNodeGroupConfigurations?: [...#ComputeNodeGroupConfiguration]
	// The name that identifies the queue.
	Name?: string
	// The Slurm configuration for the queue.
	SlurmConfiguration?: {
		SlurmCustomSettings?: [...#SlurmCustomSetting]
	}
	// 1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.
	Tags?: {...}
}

#ComputeNodeGroupConfiguration: {
	// The compute node group ID for the compute node group configuration.
	ComputeNodeGroupId?: string
}

#ErrorInfo: {
	// The short-form error code.
	Code?: string
	// The detailed error information.
	Message?: string
}

#SlurmCustomSetting: {
	// AWS PCS supports configuration of the Slurm parameters for queues:.
	ParameterName: string
	// The value for the configured Slurm setting.
	ParameterValue: string
}
