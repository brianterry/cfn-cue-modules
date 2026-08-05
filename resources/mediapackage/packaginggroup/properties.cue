package packaginggroup

import "strings"

#Properties: {
	// CDN Authorization
	Authorization?: #Authorization
	// The configuration parameters for egress access logging.
	EgressAccessLogs?: #LogConfiguration
	// The ID of the PackagingGroup.
	Id: string & =~"\\A[0-9a-zA-Z-_]+\\Z" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Authorization: {
	// The Amazon Resource Name (ARN) for the secret in AWS Secrets Manager that is used for CDN authorization.
	CdnIdentifierSecret: string
	// The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
	SecretsRoleArn: string
}

#LogConfiguration: {
	// Sets a custom AWS CloudWatch log group name for egress logs. If a log group name isn't specified, the default name is used: /aws/MediaPackage/VodEgressAccessLogs.
	LogGroupName?: string & =~"\\A\\/aws\\/MediaPackage\\/[0-9a-zA-Z-_\\/\\.#]+\\Z" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#Tag: {
	Key: string
	Value: string
}
