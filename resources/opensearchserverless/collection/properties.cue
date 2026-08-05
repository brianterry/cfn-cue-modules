package collection

import "strings"

#Properties: {
	// The name of the collection group to associate with the collection.
	CollectionGroupName?: string
	DeletionProtection?: #DeletionProtection
	// The description of the collection
	Description?: string & strings.MaxRunes(1000)
	EncryptionConfig?: #EncryptionConfig
	// The name of the collection.
	// The name must meet the following criteria:
	// Unique to your account and AWS Region
	// Starts with a lowercase letter
	// Contains only lowercase letters a-z, the numbers 0-9 and the hyphen (-)
	// Contains between 3 and 64 characters
	Name: string & =~"^[a-z][a-z0-9-]{2,63}$" & strings.MinRunes(3) & strings.MaxRunes(64)
	StandbyReplicas?: #StandbyReplicas
	// List of tags to be added to the resource
	Tags?: [...#Tag]
	Type?: #CollectionType
	VectorOptions?: #VectorOptions
}

#CollectionType: "SEARCH" | "TIMESERIES" | "VECTORSEARCH"

#DeletionProtection: "ENABLED" | "DISABLED"

#EncryptionConfig: {
	// Indicates whether to use an AWS owned key for encryption.
	AWSOwnedKey?: bool
	// Key Management Service key used to encrypt the collection.
	KmsKeyArn?: string
}

#FipsEndpoints: {
	CollectionEndpoint?: string
	DashboardEndpoint?: string
}

#ServerlessVectorAcceleration: "ENABLED" | "DISABLED" | "ALLOWED"

#StandbyReplicas: "ENABLED" | "DISABLED"

#Tag: {
	// The key in the key-value pair
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value in the key-value pair
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VectorOptions: {
	ServerlessVectorAcceleration?: #ServerlessVectorAcceleration
}
