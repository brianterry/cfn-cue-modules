package profile

import "strings"

#Properties: {
	// AS2 identifier agreed with a trading partner.
	As2Id: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// List of the certificate IDs associated with this profile to be used for encryption and signing of AS2 messages.
	CertificateIds?: [...#CertificateId]
	// Enum specifying whether the profile is local or associated with a trading partner.
	ProfileType: "LOCAL" | "PARTNER"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The name assigned to the tag that you create.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Contains one or more values that you assigned to the key name you create.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
