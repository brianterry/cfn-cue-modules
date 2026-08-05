package processingjob

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the processing job.
	ProcessingJobArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:processing-job/.*" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The ARN of a training job associated with this processing job
	TrainingJobArn: string & strings.MaxRunes(256)
	// The ARN of an AutoML job associated with this processing job.
	AutoMLJobArn: string & strings.MaxRunes(256)
	// An optional string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
	ExitMessage: string & =~"[\\S\\s]*" & strings.MaxRunes(1024)
	// A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
	FailureReason: string & strings.MaxRunes(1024)
	// The ARN of a monitoring schedule for an endpoint associated with this processing job.
	MonitoringScheduleArn: string & strings.MaxRunes(256)
	// Provides the status of a processing job.
	ProcessingJobStatus: "Completed" | "InProgress" | "Stopping" | "Stopped" | "Failed"
	// The time at which the processing job was created.
	CreationTime: string
	// The time at which the processing job was last modified.
	LastModifiedTime: string
	// The time at which the processing job started.
	ProcessingStartTime: string
	// The time at which the processing job completed.
	ProcessingEndTime: string
}
