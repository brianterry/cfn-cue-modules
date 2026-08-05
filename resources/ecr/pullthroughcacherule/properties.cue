package pullthroughcacherule

#Properties: {
	// The ARN of the Secrets Manager secret associated with the pull through cache rule.
	CredentialArn?: #CredentialArn
	// The ARN of the IAM role associated with the pull through cache rule.
	CustomRoleArn?: #CustomRoleArn
	// The Amazon ECR repository prefix associated with the pull through cache rule.
	EcrRepositoryPrefix?: #EcrRepositoryPrefix
	// The name of the upstream source registry associated with the pull through cache rule.
	UpstreamRegistry?: #UpstreamRegistry
	// The upstream registry URL associated with the pull through cache rule.
	UpstreamRegistryUrl?: #UpstreamRegistryUrl
	// The upstream repository prefix associated with the pull through cache rule.
	UpstreamRepositoryPrefix?: #UpstreamRepositoryPrefix
}

#PullThroughCacheRule: {
	CredentialArn?: #CredentialArn
	CustomRoleArn?: #CustomRoleArn
	EcrRepositoryPrefix: #EcrRepositoryPrefix
	RegistryId?: #RegistryId
	UpstreamRegistry?: #UpstreamRegistry
	UpstreamRegistryUrl: #UpstreamRegistryUrl
	UpstreamRepositoryPrefix?: #UpstreamRepositoryPrefix
}
