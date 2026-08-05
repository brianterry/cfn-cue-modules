package fhirdatastore

import "strings"

#Properties: {
	DatastoreName?: #DatastoreName
	DatastoreTypeVersion: #DatastoreTypeVersion
	IdentityProviderConfiguration?: #IdentityProviderConfiguration
	PreloadDataConfig?: #PreloadDataConfig
	SseConfiguration?: #SseConfiguration
	Tags?: [...#Tag]
}

#CreatedAt: {
	// Nanoseconds.
	Nanos: int
	// Seconds since epoch.
	Seconds: string
}

#IdentityProviderConfiguration: {
	// Type of Authorization Strategy. The two types of supported Authorization strategies are SMART_ON_FHIR_V1 and AWS_AUTH.
	AuthorizationStrategy: "SMART_ON_FHIR_V1" | "AWS_AUTH" | "SMART_ON_FHIR"
	// Flag to indicate if fine-grained authorization will be enabled for the datastore
	FineGrainedAuthorizationEnabled?: bool
	// The Amazon Resource Name (ARN) of the Lambda function that will be used to decode the access token created by the authorization server.
	IdpLambdaArn?: string & =~"arn:aws[-a-z]*:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?" & strings.MinRunes(49) & strings.MaxRunes(256)
	// The JSON metadata elements for identity provider configuration.
	Metadata?: string
}

#KmsEncryptionConfig: {
	// The type of customer-managed-key (CMK) used for encryption. The two types of supported CMKs are customer owned CMKs and AWS owned CMKs.
	CmkType: "CUSTOMER_MANAGED_KMS_KEY" | "AWS_OWNED_KMS_KEY"
	// The KMS encryption key id/alias used to encrypt the Data Store contents at rest.
	KmsKeyId?: string & =~"(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))" & strings.MinRunes(1) & strings.MaxRunes(400)
}

#PreloadDataConfig: {
	// The type of preloaded data. Only Synthea preloaded data is supported.
	PreloadDataType: "SYNTHEA"
}

#SseConfiguration: {
	KmsEncryptionConfig: #KmsEncryptionConfig
}

#Tag: {
	// The key of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
