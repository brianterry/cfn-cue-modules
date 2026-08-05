package githubrepository

#Properties: {
	Code?: #Code
	ConnectionArn?: string
	EnableIssues?: bool
	IsPrivate?: bool
	RepositoryAccessToken?: string
	RepositoryDescription?: string
	RepositoryName: string
	RepositoryOwner: string
}

#Code: {
	S3: #S3
}

#S3: {
	Bucket: string
	Key: string
	ObjectVersion?: string
}
