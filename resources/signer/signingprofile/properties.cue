package signingprofile

import "strings"

#Properties: {
	// The ID of the target signing platform.
	PlatformId: #PlatformId
	// Signature validity period of the profile.
	SignatureValidityPeriod?: #SignatureValidityPeriod
	// A list of tags associated with the signing profile.
	Tags?: [...#Tag]
}

#SignatureValidityPeriod: {
	Type?: "DAYS" | "MONTHS" | "YEARS"
	Value?: int
}

#Tag: {
	Key?: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
