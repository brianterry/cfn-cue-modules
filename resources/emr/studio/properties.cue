package studio

import "strings"

#Properties: {
	// Specifies whether the Studio authenticates users using single sign-on (SSO) or IAM. Amazon EMR Studio currently only supports SSO authentication.
	AuthMode: "SSO" | "IAM"
	// The default Amazon S3 location to back up EMR Studio Workspaces and notebook files. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
	DefaultS3Location: string & =~"^s3://.*" & strings.MinRunes(6) & strings.MaxRunes(10280)
	// A detailed description of the Studio.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// The AWS KMS key identifier (ARN) used to encrypt AWS EMR Studio workspace and notebook files when backed up to AWS S3.
	EncryptionKeyArn?: #Arn
	// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by VpcId.
	EngineSecurityGroupId: string & =~"^sg-[a-zA-Z0-9\\-._]+$" & strings.MinRunes(4) & strings.MaxRunes(256)
	// The ARN of the IAM Identity Center instance to create the Studio application.
	IdcInstanceArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Specifies whether IAM Identity Center user assignment is REQUIRED or OPTIONAL. If the value is set to REQUIRED, users must be explicitly assigned to the Studio application to access the Studio.
	IdcUserAssignment?: "REQUIRED" | "OPTIONAL"
	// Your identity provider's authentication endpoint. Amazon EMR Studio redirects federated users to this endpoint for authentication when logging in to a Studio with the Studio URL.
	IdpAuthUrl?: string & =~"^https://[0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])(:[0-9]*)*([?/#].*)?$" & strings.MaxRunes(4096)
	// The name of relay state parameter for external Identity Provider.
	IdpRelayStateParameterName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// A descriptive name for the Amazon EMR Studio.
	Name: string & =~"[a-zA-Z0-9_-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The IAM role that will be assumed by the Amazon EMR Studio. The service role provides a way for Amazon EMR Studio to interoperate with other AWS services.
	ServiceRole: #Arn
	// A list of up to 5 subnet IDs to associate with the Studio. The subnets must belong to the VPC specified by VpcId. Studio users can create a Workspace in any of the specified subnets.
	SubnetIds: [...#SubnetId]
	// A list of tags to associate with the Studio. Tags are user-defined key-value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.
	Tags?: #Tags
	// A Boolean indicating whether to enable Trusted identity propagation for the Studio. The default value is false.
	TrustedIdentityPropagationEnabled?: bool
	// The IAM user role that will be assumed by users and groups logged in to a Studio. The permissions attached to this IAM role can be scoped down for each user or group using session policies.
	UserRole?: #Arn
	// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
	VpcId: string & =~"^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"
	// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by VpcId.
	WorkspaceSecurityGroupId: string & =~"^sg-[a-zA-Z0-9\\-._]+$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & =~"[a-zA-Z+-=._:/]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
