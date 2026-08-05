package browsercustom

import "strings"

#Properties: {
	// Browser signing configuration.
	BrowserSigning?: #BrowserSigning
	// List of root CA certificates in PEM format.
	Certificates?: #CertificateList
	// The description of the browser.
	Description?: string
	// A list of enterprise policy files for the browser.
	EnterprisePolicies?: #BrowserEnterprisePolicies
	// The Amazon Resource Name (ARN) of the IAM role that the browser uses to access resources.
	ExecutionRoleArn?: #RoleArn
	// The name of the browser.
	Name: string
	// Network configuration for browser.
	NetworkConfiguration: #BrowserNetworkConfiguration
	// Recording configuration for browser.
	RecordingConfig?: #RecordingConfig
	Tags?: #TagsMap
}

#BrowserArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):browser(-custom)?\\/(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"

#BrowserEnterprisePolicies: [...#BrowserEnterprisePolicy]

#BrowserEnterprisePolicy: {
	// The S3 location of the enterprise policy file.
	Location: #S3Location
	// The type of browser enterprise policy.
	Type: #BrowserEnterprisePolicyType
}

#BrowserEnterprisePolicyType: "MANAGED" | "RECOMMENDED"

#BrowserId: string & =~"^(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"

#BrowserNetworkConfiguration: {
	NetworkMode: #BrowserNetworkMode
	VpcConfig?: #VpcConfig
}

#BrowserNetworkMode: "PUBLIC" | "VPC"

#BrowserSigning: {
	Enabled?: bool
}

#BrowserStatus: "CREATING" | "CREATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED" | "DELETED"

#BrowserSummaries: [...#BrowserSummary]

#BrowserSummary: {
	BrowserArn: #BrowserArn
	BrowserId: #BrowserId
	CreatedAt: string
	Description?: string
	LastUpdatedAt?: string
	Name?: string
	Status: #BrowserStatus
}

#Certificate: {
	// Certificate location in Secrets Manager.
	CertificateLocation: #CertificateLocation
}

#CertificateList: [...#Certificate]

#CertificateLocation: {
	// Secrets Manager secret ARN.
	SecretArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#RecordingConfig: {
	Enabled?: bool
	S3Location?: #S3Location
}

#RoleArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):iam::[0-9]{12}:role/.+$"

#S3Location: {
	Bucket: string & =~"^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$"
	Prefix: string & strings.MinRunes(1)
}

#SecurityGroupId: string & =~"^sg-[0-9a-zA-Z]{8,17}$"

#SecurityGroups: [...#SecurityGroupId]

#SubnetId: string & =~"^subnet-[0-9a-zA-Z]{8,17}$"

#Subnets: [...#SubnetId]

#TagsMap: {...}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}
