package paymentconnector

import "strings"

#Properties: {
	// The name of the payment connector
	ConnectorName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"
	ConnectorType: #PaymentConnectorType
	// The credential provider configurations for the connector
	CredentialProviderConfigurations: [...#CredentialsProviderConfiguration]
	// A description of the payment connector
	Description?: string & =~"^[a-zA-Z0-9\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The identifier of the parent payment manager
	PaymentManagerId: string & =~"^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"
}

#CredentialsProviderConfiguration: {
	CoinbaseCDP?: #PaymentCredentialProviderConfiguration
	StripePrivy?: #PaymentCredentialProviderConfiguration
}

#PaymentCredentialProviderConfiguration: {
	// The ARN of the payment credential provider
	CredentialProviderArn: string
}
