package coderepository

#Properties: {
	CodeRepositoryName?: string
	GitConfig: #GitConfig
	Tags?: [...#Tag]
}

#GitConfig: {
	Branch?: string
	RepositoryUrl: string
	SecretArn?: string
}

#Tag: {
	Key: string
	Value: string
}
