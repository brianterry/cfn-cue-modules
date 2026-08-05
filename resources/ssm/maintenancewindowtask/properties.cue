package maintenancewindowtask

#Properties: {
	// The specification for whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached.
	CutoffBehavior?: string
	// A description of the task.
	Description?: string
	// Information about an Amazon S3 bucket to write Run Command task-level logs to.
	LoggingInfo?: #LoggingInfo
	// The maximum number of targets this task can be run for, in parallel.
	MaxConcurrency?: string
	// The maximum number of errors allowed before this task stops being scheduled.
	MaxErrors?: string
	// The task name.
	Name?: string
	// The priority of the task in the maintenance window. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
	Priority: int
	// The Amazon Resource Name (ARN) of the IAM service role for AWS Systems Manager to assume when running a maintenance window task.
	ServiceRoleArn?: string
	// The targets (either instances or window target ids).
	Targets?: [...#Target]
	// The resource that the task uses during execution.
	TaskArn: string
	// The parameters to pass to the task when it runs. Populate only the fields that match the task type. All other fields should be empty.
	TaskInvocationParameters?: #TaskInvocationParameters
	// The parameters to pass to the task when it runs.
	TaskParameters?: {...}
	// The type of task.
	TaskType: string
	// The ID of the maintenance window where the task is registered.
	WindowId: string
}

#CloudWatchOutputConfig: {
	// The name of the CloudWatch log group where you want to send command output.
	CloudWatchLogGroupName?: string
	// Enables Systems Manager to send command output to CloudWatch Logs.
	CloudWatchOutputEnabled?: bool
}

#LoggingInfo: {
	Region: string
	S3Bucket: string
	S3Prefix?: string
}

#MaintenanceWindowAutomationParameters: {
	DocumentVersion?: string
	Parameters?: {...}
}

#MaintenanceWindowLambdaParameters: {
	ClientContext?: string
	Payload?: string
	Qualifier?: string
}

#MaintenanceWindowRunCommandParameters: {
	CloudWatchOutputConfig?: #CloudWatchOutputConfig
	Comment?: string
	DocumentHash?: string
	DocumentHashType?: string
	DocumentVersion?: string
	NotificationConfig?: #NotificationConfig
	OutputS3BucketName?: string
	OutputS3KeyPrefix?: string
	Parameters?: {...}
	ServiceRoleArn?: string
	TimeoutSeconds?: int
}

#MaintenanceWindowStepFunctionsParameters: {
	Input?: string
	Name?: string
}

#NotificationConfig: {
	NotificationArn: string
	NotificationEvents?: [...string]
	NotificationType?: string
}

#Target: {
	Key: string
	Values: [...string]
}

#TaskInvocationParameters: {
	MaintenanceWindowAutomationParameters?: #MaintenanceWindowAutomationParameters
	MaintenanceWindowLambdaParameters?: #MaintenanceWindowLambdaParameters
	MaintenanceWindowRunCommandParameters?: #MaintenanceWindowRunCommandParameters
	MaintenanceWindowStepFunctionsParameters?: #MaintenanceWindowStepFunctionsParameters
}
