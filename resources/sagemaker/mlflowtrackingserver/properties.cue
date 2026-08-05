package mlflowtrackingserver

import "strings"

#Properties: {
	// The Amazon S3 URI for MLFlow Tracking Server artifacts.
	ArtifactStoreUri: string & =~"^s3:\\/\\/([^\\/]+)\\/?(.*)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A flag to enable Automatic SageMaker Model Registration.
	AutomaticModelRegistration?: bool
	// The MLFlow Version used on the MLFlow Tracking Server.
	MlflowVersion?: string & =~"^\\d+(\\.\\d+)+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	// The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to perform tasks on behalf of the customer.
	RoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role\\/?[a-zA-Z_0-9+=,.@\\-_\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The name of the MLFlow Tracking Server.
	TrackingServerName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,255}$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The size of the MLFlow Tracking Server.
	TrackingServerSize?: "Small" | "Medium" | "Large"
	// The start of the time window for maintenance of the MLFlow Tracking Server in UTC time.
	WeeklyMaintenanceWindowStart?: string & =~"^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):([0-5]\\d)$" & strings.MaxRunes(9)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MaxRunes(256)
}
