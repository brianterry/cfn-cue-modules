package mlflowapp

import "strings"

#Properties: {
	// The S3 URI for a general purpose bucket to use as the MLflow App artifact store.
	ArtifactStoreUri: string & =~"(https|s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry.
	ModelRegistrationMode?: "AutoModelRegistrationEnabled" | "AutoModelRegistrationDisabled"
	// The name of the MLflow App.
	Name: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,255}$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow App uses to access the artifact store in Amazon S3.
	RoleArn: string & =~"arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Tags to associate with the MLflow App.
	Tags?: [...#Tag]
	// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: Tue:03:30.
	WeeklyMaintenanceWindowStart?: string & =~"(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):([0-5]\\d)" & strings.MinRunes(0) & strings.MaxRunes(9)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
