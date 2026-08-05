package apikeycredentialprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the API key credential provider
	CredentialProviderArn: string & =~"^arn:(aws|aws-us-gov):bedrock-agentcore:[A-Za-z0-9-]{1,64}:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-]+$"
	// The ARN of the API key secret in AWS Secrets Manager
	ApiKeySecretArn: #ApiKeySecretArn
	// The JSON key within the secret that contains the API key value
	ApiKeySecretJsonKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The timestamp when the credential provider was created
	CreatedTime: string
	// The timestamp when the credential provider was last updated
	LastUpdatedTime: string
}
