package task

import "strings"

#Properties: {
	// The ARN of the Amazon CloudWatch log group that is used to monitor and log events in the task.
	CloudWatchLogGroupArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):logs:[a-z\\-0-9]*:[0-9]{12}:log-group:([^:\\*]*)(:\\*)?$" & strings.MaxRunes(562)
	// The ARN of an AWS storage resource's location.
	DestinationLocationArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$" & strings.MaxRunes(128)
	Excludes?: [...#FilterRule]
	Includes?: [...#FilterRule]
	ManifestConfig?: #ManifestConfig
	// The name of a task. This value is a text reference that is used to identify the task in the console.
	Name?: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Options?: #Options
	Schedule?: #TaskSchedule
	// The ARN of the source location for the task.
	SourceLocationArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$" & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Specifies the task mode for the task.
	TaskMode?: "BASIC" | "ENHANCED"
	TaskReportConfig?: #TaskReportConfig
}

#FilterRule: {
	// The type of filter rule to apply. AWS DataSync only supports the SIMPLE_PATTERN rule type.
	FilterType?: "SIMPLE_PATTERN"
	// A single filter string that consists of the patterns to include or exclude. The patterns are delimited by "|".
	Value?: string & =~"^[^\\x00]+$" & strings.MaxRunes(409600)
}

#ManifestConfig: {
	// Specifies what DataSync uses the manifest for.
	Action?: "TRANSFER"
	// Specifies the file format of your manifest.
	Format?: "CSV"
	// Specifies the manifest that you want DataSync to use and where it's hosted.
	Source: {
		S3?: #ManifestConfigSourceS3
	}
}

#ManifestConfigSourceS3: {
	// Specifies the AWS Identity and Access Management (IAM) role that allows DataSync to access your manifest.
	BucketAccessRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$" & strings.MaxRunes(2048)
	// Specifies the Amazon S3 object key of your manifest.
	ManifestObjectPath?: string & =~"^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}\\p{C}]*$" & strings.MaxRunes(1024)
	// Specifies the object version ID of the manifest that you want DataSync to use.
	ManifestObjectVersionId?: string & =~"^.+$" & strings.MaxRunes(100)
	// Specifies the Amazon Resource Name (ARN) of the S3 bucket where you're hosting your manifest.
	S3BucketArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):(s3|s3-outposts):[a-z\\-0-9]*:[0-9]*:.*$" & strings.MaxRunes(156)
}

#Options: {
	// A file metadata value that shows the last time a file was accessed (that is, when the file was read or written to).
	Atime?: "NONE" | "BEST_EFFORT"
	// A value that limits the bandwidth used by AWS DataSync.
	BytesPerSecond?: int & >=-1
	// The group ID (GID) of the file's owners.
	Gid?: "NONE" | "INT_VALUE" | "NAME" | "BOTH"
	// A value that determines the types of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide.
	LogLevel?: "OFF" | "BASIC" | "TRANSFER"
	// A value that indicates the last time that a file was modified (that is, a file was written to) before the PREPARING phase.
	Mtime?: "NONE" | "PRESERVE"
	// A value that determines whether object tags should be read from the source object store and written to the destination object store.
	ObjectTags?: "PRESERVE" | "NONE"
	// A value that determines whether files at the destination should be overwritten or preserved when copying files.
	OverwriteMode?: "ALWAYS" | "NEVER"
	// A value that determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file.
	PosixPermissions?: "NONE" | "PRESERVE"
	// A value that specifies whether files in the destination that don't exist in the source file system should be preserved.
	PreserveDeletedFiles?: "PRESERVE" | "REMOVE"
	// A value that determines whether AWS DataSync should preserve the metadata of block and character devices in the source file system, and recreate the files with that device name and metadata on the destination.
	PreserveDevices?: "NONE" | "PRESERVE"
	// A value that determines which components of the SMB security descriptor are copied during transfer.
	SecurityDescriptorCopyFlags?: "NONE" | "OWNER_DACL" | "OWNER_DACL_SACL"
	// A value that determines whether tasks should be queued before executing the tasks.
	TaskQueueing?: "ENABLED" | "DISABLED"
	// A value that determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location.
	TransferMode?: "CHANGED" | "ALL"
	// The user ID (UID) of the file's owner.
	Uid?: "NONE" | "INT_VALUE" | "NAME" | "BOTH"
	// A value that determines whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred.
	VerifyMode?: "POINT_IN_TIME_CONSISTENT" | "ONLY_FILES_TRANSFERRED" | "NONE"
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TaskReportConfig: {
	// Specifies where DataSync uploads your task report.
	Destination: {
		S3?: #TaskReportConfigDestinationS3
	}
	// Specifies whether your task report includes the new version of each object transferred into an S3 bucket, this only applies if you enable versioning on your bucket.
	ObjectVersionIds?: "INCLUDE" | "NONE"
	// Specifies the type of task report that you want.
	OutputType: "SUMMARY_ONLY" | "STANDARD"
	// Customizes the reporting level for aspects of your task report. For example, your report might generally only include errors, but you could specify that you want a list of successes and errors just for the files that Datasync attempted to delete in your destination location.
	Overrides?: {
		Deleted?: {
			ReportLevel?: "ERRORS_ONLY" | "SUCCESSES_AND_ERRORS"
		}
		Skipped?: {
			ReportLevel?: "ERRORS_ONLY" | "SUCCESSES_AND_ERRORS"
		}
		Transferred?: {
			ReportLevel?: "ERRORS_ONLY" | "SUCCESSES_AND_ERRORS"
		}
		Verified?: {
			ReportLevel?: "ERRORS_ONLY" | "SUCCESSES_AND_ERRORS"
		}
	}
	// Specifies whether you want your task report to include only what went wrong with your transfer or a list of what succeeded and didn't.
	ReportLevel?: "ERRORS_ONLY" | "SUCCESSES_AND_ERRORS"
}

#TaskReportConfigDestinationS3: {
	// Specifies the Amazon Resource Name (ARN) of the IAM policy that allows Datasync to upload a task report to your S3 bucket.
	BucketAccessRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$" & strings.MaxRunes(2048)
	// Specifies the ARN of the S3 bucket where Datasync uploads your report.
	S3BucketArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):(s3|s3-outposts):[a-z\\-0-9]*:[0-9]*:.*$" & strings.MaxRunes(156)
	// Specifies a bucket prefix for your report.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$" & strings.MaxRunes(4096)
}

#TaskSchedule: {
	// A cron expression that specifies when AWS DataSync initiates a scheduled transfer from a source to a destination location
	ScheduleExpression?: string & =~"^[a-zA-Z0-9\\ \\_\\*\\?\\,\\|\\^\\-\\/\\#\\s\\(\\)\\+]*$" & strings.MaxRunes(256)
	// Specifies status of a schedule.
	Status?: "ENABLED" | "DISABLED"
}
