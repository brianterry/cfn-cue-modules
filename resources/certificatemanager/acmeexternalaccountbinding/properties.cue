package acmeexternalaccountbinding

import "strings"

#Properties: {
	// The ARN of the ACME endpoint this binding is associated with.
	AcmeEndpointArn: string
	Expiration?: #Expiration
	// The IAM role ARN for cross-account access.
	RoleArn: string
	// Tags associated with the external account binding.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}

#Expiration: {
	// The time unit for the expiration value.
	Type: string
	// The expiration value.
	Value: int
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
