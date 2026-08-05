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

#Arn: string & =~"^arn:aws(-[a-z]{1,4}){0,2}:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$"

#PlatformId: "AWSLambda-SHA384-ECDSA" | "Notation-OCI-SHA384-ECDSA"

#ProfileName: string & =~"^[0-9a-zA-Z_]{2,64}$" & strings.MinRunes(2) & strings.MaxRunes(64)

#ProfileVersion: string & =~"^[0-9a-zA-Z]{10}$"

#SignatureValidityPeriod: {
	Type?: "DAYS" | "MONTHS" | "YEARS"
	Value?: int
}

#Tag: {
	Key?: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
