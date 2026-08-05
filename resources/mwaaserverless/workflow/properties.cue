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

#EncryptionConfiguration: {
	KmsKeyId?: string
	Type: "AWS_MANAGED_KEY" | "CUSTOMER_MANAGED_KEY"
}

#LoggingConfiguration: {
	LogGroupName: string & strings.MinRunes(1)
}

#NetworkConfiguration: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#S3Location: {
	Bucket: string & strings.MinRunes(1)
	ObjectKey: string & strings.MinRunes(1)
	VersionId?: string
}

#ScheduleConfiguration: {
	CronExpression?: string
}
