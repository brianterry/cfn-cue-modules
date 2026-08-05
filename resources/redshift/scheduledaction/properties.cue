package scheduledaction

#Properties: {
	// If true, the schedule is enabled. If false, the scheduled action does not trigger.
	Enable?: bool
	// The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger.
	EndTime?: #timestamp
	// The IAM role to assume to run the target action.
	IamRole?: string
	// The schedule in `at( )` or `cron( )` format.
	Schedule?: string
	// The description of the scheduled action.
	ScheduledActionDescription?: string
	// The name of the scheduled action. The name must be unique within an account.
	ScheduledActionName: string
	// The start time in UTC of the scheduled action. Before this time, the scheduled action does not trigger.
	StartTime?: #timestamp
	// A JSON format string of the Amazon Redshift API operation with input parameters.
	TargetAction?: #ScheduledActionType
}

#PauseClusterMessage: {
	ClusterIdentifier: string
}

#ResizeClusterMessage: {
	Classic?: bool
	ClusterIdentifier: string
	ClusterType?: string
	NodeType?: string
	NumberOfNodes?: int
}

#ResumeClusterMessage: {
	ClusterIdentifier: string
}
