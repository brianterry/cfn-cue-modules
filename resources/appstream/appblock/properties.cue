package appblock

#Properties: {
	Description?: string
	DisplayName?: string
	Name: string
	PackagingType?: #PackagingType
	PostSetupScriptDetails?: #ScriptDetails
	SetupScriptDetails?: #ScriptDetails
	SourceS3Location: #S3Location
	Tags?: [...#Tag]
}

#Arn: string

#PackagingType: string

#S3Location: {
	S3Bucket: string
	S3Key?: string
}

#ScriptDetails: {
	ExecutableParameters?: string
	ExecutablePath: string
	ScriptS3Location: #S3Location
	TimeoutInSeconds: int
}

#Tag: {
	Key: string
	Value: string
} | {
	TagKey: string
	TagValue: string
}
