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

#BrowserEnterprisePolicy: {
	// The S3 location of the enterprise policy file.
	Location: #S3Location
	// The type of browser enterprise policy.
	Type: #BrowserEnterprisePolicyType
}

#BrowserNetworkConfiguration: {
	NetworkMode: #BrowserNetworkMode
	VpcConfig?: #VpcConfig
}

#BrowserSigning: {
	Enabled?: bool
}

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

#CertificateLocation: {
	// Secrets Manager secret ARN.
	SecretArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#RecordingConfig: {
	Enabled?: bool
	S3Location?: #S3Location
}

#S3Location: {
	Bucket: string & =~"^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$"
	Prefix: string & strings.MinRunes(1)
}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}
