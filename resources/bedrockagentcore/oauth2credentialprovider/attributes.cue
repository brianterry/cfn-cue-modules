package oauth2credentialprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the OAuth2 credential provider
	CredentialProviderArn: string & =~"^arn:(aws|aws-us-gov):bedrock-agentcore:[A-Za-z0-9-]{1,64}:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/oauth2credentialprovider/[a-zA-Z0-9-]+$"
	// The ARN of the client secret in AWS Secrets Manager
	ClientSecretArn: #ClientSecretArn
	// The JSON key within the secret that contains the client secret value
	ClientSecretJsonKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The source of the client secret
	ClientSecretSource: "MANAGED" | "EXTERNAL"
	// The callback URL for the OAuth2 authorization flow
	CallbackUrl: string
	// The output configuration for the OAuth2 provider
	Oauth2ProviderConfigOutput: #Oauth2ProviderConfigOutput
	// The timestamp when the credential provider was created
	CreatedTime: string
	// The timestamp when the credential provider was last updated
	LastUpdatedTime: string
	// The current status of the OAuth2 credential provider
	Status: "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED"
}
