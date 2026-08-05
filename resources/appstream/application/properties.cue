package application

#Properties: {
	AppBlockArn: #Arn
	AttributesToDelete?: [...#ApplicationAttribute]
	Description?: string
	DisplayName?: string
	IconS3Location: #S3Location
	InstanceFamilies: [...string]
	LaunchParameters?: string
	LaunchPath: string
	Name: string
	Platforms: [...#PlatformType]
	Tags?: [...#Tag]
	WorkingDirectory?: string
}

#S3Location: {
	S3Bucket: string
	S3Key: string
}
