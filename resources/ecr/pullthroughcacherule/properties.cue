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

#CredentialArn: string & =~"^arn:[a-zA-Z-]+:secretsmanager:[a-zA-Z0-9-:]+:secret:ecr\\-pullthroughcache\\/[a-zA-Z0-9\\/_+=.@-]+$" & strings.MinRunes(50) & strings.MaxRunes(612)

#CustomRoleArn: string & strings.MaxRunes(2048)

#EcrRepositoryPrefix: string & =~"^([a-z0-9]+((\\.|_|__|-+)[a-z0-9]+)*(\\/[a-z0-9]+((\\.|_|__|-+)[a-z0-9]+)*)*\\/?|ROOT)$" & strings.MinRunes(2) & strings.MaxRunes(30)

#PullThroughCacheRule: {
	CredentialArn?: #CredentialArn
	CustomRoleArn?: #CustomRoleArn
	EcrRepositoryPrefix: #EcrRepositoryPrefix
	RegistryId?: #RegistryId
	UpstreamRegistry?: #UpstreamRegistry
	UpstreamRegistryUrl: #UpstreamRegistryUrl
	UpstreamRepositoryPrefix?: #UpstreamRepositoryPrefix
}

#RegistryId: string & =~"^[0-9]{12}$"

#UpstreamRegistry: string

#UpstreamRegistryUrl: string

#UpstreamRepositoryPrefix: string & =~"^([a-z0-9]+((\\.|_|__|-+)[a-z0-9]+)*(\\/[a-z0-9]+((\\.|_|__|-+)[a-z0-9]+)*)*\\/?|ROOT)$" & strings.MinRunes(2) & strings.MaxRunes(30)
