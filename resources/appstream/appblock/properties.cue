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
