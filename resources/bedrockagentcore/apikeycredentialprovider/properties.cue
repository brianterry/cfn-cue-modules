package apikeycredentialprovider

import "strings"

#Properties: {
	// The API key to use for authentication
	ApiKey?: string & strings.MinRunes(1) & strings.MaxRunes(65536)
	// Configuration for a customer-provided secret containing the API key
	ApiKeySecretConfig?: #SecretReference
	// The source of the API key secret. Use MANAGED for service-managed secrets or EXTERNAL for customer-provided secrets.
	ApiKeySecretSource?: "MANAGED" | "EXTERNAL"
	// The name of the API key credential provider
	Name: string & =~"^[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tags to assign to the API key credential provider
	Tags?: [...#Tag]
}

#ApiKeySecretArn: {
	// The ARN of the secret in AWS Secrets Manager
	SecretArn: string & =~"^arn:(aws|aws-us-gov):secretsmanager:[A-Za-z0-9-]{1,64}:[0-9]{12}:secret:[a-zA-Z0-9-_/+=.@!]+$"
}

#SecretReference: {
	// The JSON key within the secret that contains the credential value
	JsonKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID or ARN of the secret in AWS Secrets Manager
	SecretId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
