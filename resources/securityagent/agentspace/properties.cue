package agentspace

import "strings"

#Properties: {
	AwsResources?: #AWSResources
	CodeReviewSettings?: #CodeReviewSettings
	// Description of the agent space
	Description?: string
	// Identifier of the KMS key used to encrypt data. Can be a key ID, key ARN, alias name, or alias ARN. If not specified, an AWS managed key is used.
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Name of the agent space
	Name: string
	// Tags for the agent space
	Tags?: [...#Tag]
	// List of target domain identifiers registered with the agent space
	TargetDomainIds?: [...string]
}

#AWSResources: {
	// IAM role ARNs
	IamRoles?: [...string]
	// Lambda function ARNs used to retrieve tester credentials for pentests
	LambdaFunctionArns?: [...string]
	// CloudWatch log group ARNs
	LogGroups?: [...string]
	// S3 bucket ARNs
	S3Buckets?: [...string]
	// SecretsManager secret ARNs used to store tester credentials for pentests
	SecretArns?: [...string]
	// VPC configurations
	Vpcs?: [...#VpcConfig]
}

#BitbucketCapabilitiesResource: {
	// Enables Code Review in the repository
	LeaveComments?: bool
	// Enables creation of pull requests with automated fixes
	RemediateCode?: bool
}

#BitbucketRepositoryResource: {
	// Bitbucket repository name
	Name: string
	// Bitbucket workspace slug owning the repository
	Workspace: string
}

#CodeReviewSettings: {
	// Whether Controls are utilized for code review analysis
	ControlsScanning: bool
	// Whether general purpose analysis is performed for code review
	GeneralPurposeScanning: bool
}

#ConfluenceCapabilitiesResource: {
	// Enables creation of new Confluence documents in the same space
	CreateDocument?: bool
	// Enables read access to the document content
	FetchDocument?: bool
	// Enables updates to the document
	UpdateDocument?: bool
}

#ConfluenceDocumentResource: {
	// Customer-supplied logical name for the Confluence document
	Name: string
	// Confluence page identifier
	PageId: string
	// Confluence space key containing the document
	SpaceKey: string
	// Read-only human-readable title of the containing space, populated from service-side metadata
	SpaceTitle?: string
	// Read-only human-readable title of the page, populated from service-side metadata
	Title?: string
}

#GitHubCapabilitiesResource: {
	// Enables Code Review in the repository
	LeaveComments: bool
	// Enables creation of pull requests with automated fixes
	RemediateCode: bool
}

#GitHubRepositoryResource: {
	// GitHub repository name
	Name: string
	// GitHub repository owner (user or organization)
	Owner: string
}

#GitLabCapabilitiesResource: {
	// Enables Code Review in the repository
	LeaveComments?: bool
	// Enables creation of merge requests with automated fixes
	RemediateCode?: bool
}

#GitLabRepositoryResource: {
	// GitLab project name
	Name: string
	// GitLab project namespace (user, group, or subgroup path)
	Namespace: string
}

#IntegratedResource: {
	// Unique identifier of the Provider Integration
	Integration: string
	// List of selected Resources from the Integration
	ProviderResources: [...#ProviderResource]
}

#ProviderResource: {
	BitbucketCapabilities?: #BitbucketCapabilitiesResource
	BitbucketRepository?: #BitbucketRepositoryResource
	ConfluenceCapabilities?: #ConfluenceCapabilitiesResource
	ConfluenceDocument?: #ConfluenceDocumentResource
	GitHubCapabilities?: #GitHubCapabilitiesResource
	GitHubRepository?: #GitHubRepositoryResource
	GitLabCapabilities?: #GitLabCapabilitiesResource
	GitLabRepository?: #GitLabRepositoryResource
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfig: {
	// List of security group ARNs in the customer VPC
	SecurityGroupArns?: [...string]
	// List of subnet ARNs in the customer VPC
	SubnetArns?: [...string]
	// ARN of the customer VPC
	VpcArn?: string
}
