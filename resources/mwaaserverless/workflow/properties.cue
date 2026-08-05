package workflow

import "strings"

#Properties: {
	DefinitionS3Location: #S3Location
	Description?: #Description
	EncryptionConfiguration?: #EncryptionConfiguration
	LoggingConfiguration?: #LoggingConfiguration
	Name?: #Name
	NetworkConfiguration?: #NetworkConfiguration
	RoleArn: #RoleArn
	Tags?: #Tags
	TriggerMode?: #TriggerMode
}

#Arn: string & =~"^arn:aws(?:-(?:cn|us-gov|iso|iso-b|iso-e|iso-f))?:airflow-serverless:([a-z]{2}-[a-z]+-[0-9]{1}):([0-9]{12}):workflow/([a-zA-Z0-9][a-zA-Z0-9\\.\\-_]{0,254}-[a-zA-z0-9]{10})$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#Description: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#EncryptionConfiguration: {
	KmsKeyId?: string
	Type: "AWS_MANAGED_KEY" | "CUSTOMER_MANAGED_KEY"
}

#LoggingConfiguration: {
	LogGroupName: string & strings.MinRunes(1)
}

#Name: string & =~"^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*$" & strings.MinRunes(1) & strings.MaxRunes(255)

#NetworkConfiguration: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#RoleArn: string & =~"^arn:aws(?:-(?:cn|us-gov|iso|iso-b|iso-e|iso-f))?:iam::[0-9]{12}:role(/[a-zA-Z0-9+=,.@_-]{1,512})*?/[a-zA-Z0-9+=,.@_-]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#S3Location: {
	Bucket: string & strings.MinRunes(1)
	ObjectKey: string & strings.MinRunes(1)
	VersionId?: string
}

#ScheduleConfiguration: {
	CronExpression?: string
}

#Tags: {...}

#Timestamp: string

#TriggerMode: string & strings.MinRunes(1) & strings.MaxRunes(255)

#WorkflowStatus: "READY" | "DELETING"

#WorkflowVersion: string & =~"^[a-z0-9]{32}$" & strings.MinRunes(32) & strings.MaxRunes(32)
