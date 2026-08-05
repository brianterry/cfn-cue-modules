package repository

#Properties: {
	Code?: #Code
	KmsKeyId?: string
	RepositoryDescription?: string
	RepositoryName: string
	Tags?: [...#Tag]
	Triggers?: [...#RepositoryTrigger]
}

#Code: {
	BranchName?: string
	S3: #S3
}

#RepositoryTrigger: {
	Branches?: [...string]
	CustomData?: string
	DestinationArn: string
	Events: [...string]
	Name: string
}

#S3: {
	Bucket: string
	Key: string
	ObjectVersion?: string
}

#Tag: {
	Key: string
	Value: string
}
