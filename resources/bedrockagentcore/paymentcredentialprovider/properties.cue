package paymentcredentialprovider

import "strings"

#Properties: {
	CredentialProviderVendor: #PaymentCredentialProviderVendorType
	// Unique name for the payment credential provider
	Name: string & =~"^[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ProviderConfigurationInput?: #PaymentProviderConfigurationInput
	// Tags for the payment credential provider
	Tags?: [...#Tag]
}

#CoinbaseCdpConfigurationInput: {
	// The Coinbase CDP API key ID
	ApiKeyId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// The Coinbase CDP API key secret
	ApiKeySecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ApiKeySecretConfig?: #SecretReference
	ApiKeySecretSource?: #SecretSourceType
	// The Coinbase CDP wallet secret
	WalletSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	WalletSecretConfig?: #SecretReference
	WalletSecretSource?: #SecretSourceType
}

#CoinbaseCdpConfigurationOutput: {
	// The Coinbase CDP API key ID
	ApiKeyId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	ApiKeySecretArn: #SecretInfo
	// The JSON key within the secret that contains the API key secret value
	ApiKeySecretJsonKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	ApiKeySecretSource?: #SecretSourceType
	WalletSecretArn?: #SecretInfo
	// The JSON key within the secret that contains the wallet secret value
	WalletSecretJsonKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	WalletSecretSource?: #SecretSourceType
}

#PaymentCredentialProviderVendorType: "CoinbaseCDP" | "StripePrivy"

#PaymentProviderConfigurationInput: {
	CoinbaseCdpConfiguration?: #CoinbaseCdpConfigurationInput
	StripePrivyConfiguration?: #StripePrivyConfigurationInput
}

#PaymentProviderConfigurationOutput: {
	CoinbaseCdpConfiguration?: #CoinbaseCdpConfigurationOutput
	StripePrivyConfiguration?: #StripePrivyConfigurationOutput
}

#SecretInfo: {
	// The ARN of the secret in AWS Secrets Manager
	SecretArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b|aws-iso-e|aws-iso-f|aws-eusc):secretsmanager:[A-Za-z0-9-]{1,64}:[0-9]{12}:secret:[a-zA-Z0-9-_/+=.@!]+$"
}

#SecretReference: {
	// The JSON key within the secret that contains the credential value
	JsonKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID or ARN of the secret in AWS Secrets Manager
	SecretId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#SecretSourceType: "MANAGED" | "EXTERNAL"

#StripePrivyConfigurationInput: {
	// The app ID provided by Privy
	AppId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// The app secret provided by Privy
	AppSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	AppSecretConfig?: #SecretReference
	AppSecretSource?: #SecretSourceType
	// The authorization ID for the Stripe Privy integration
	AuthorizationId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// The authorization private key for the Stripe Privy integration
	AuthorizationPrivateKey?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	AuthorizationPrivateKeyConfig?: #SecretReference
	AuthorizationPrivateKeySource?: #SecretSourceType
}

#StripePrivyConfigurationOutput: {
	// The app ID provided by Privy
	AppId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	AppSecretArn: #SecretInfo
	// The JSON key within the secret that contains the app secret value
	AppSecretJsonKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	AppSecretSource?: #SecretSourceType
	// The authorization ID for the Stripe Privy integration
	AuthorizationId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	AuthorizationPrivateKeyArn: #SecretInfo
	// The JSON key within the secret that contains the authorization private key value
	AuthorizationPrivateKeyJsonKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	AuthorizationPrivateKeySource?: #SecretSourceType
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
