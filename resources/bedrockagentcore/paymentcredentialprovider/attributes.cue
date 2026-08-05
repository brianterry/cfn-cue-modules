package paymentcredentialprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the payment credential provider
	CredentialProviderArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b|aws-iso-e|aws-iso-f|aws-eusc):(acps|bedrock-agentcore):[A-Za-z0-9-]{1,64}:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/paymentcredentialprovider/[a-zA-Z0-9_.-]+$"
	ProviderConfigurationOutput: #PaymentProviderConfigurationOutput
	// The timestamp when the credential provider was created
	CreatedTime: string
	// The timestamp when the credential provider was last updated
	LastUpdatedTime: string
}
