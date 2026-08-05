package key

import "strings"

#Properties: {
	DeriveKeyUsage?: #DeriveKeyUsage
	Enabled?: bool
	Exportable: bool
	KeyAttributes: #KeyAttributes
	KeyCheckValueAlgorithm?: #KeyCheckValueAlgorithm
	// The resource-based policy attached to the key, in JSON format.
	Policy?: string & strings.MinRunes(1) & strings.MaxRunes(20480)
	ReplicationRegions?: [...string & =~"^[a-z]{2}-[a-z]{1,16}-[0-9]+$"]
	Tags?: [...#Tag]
}

#KeyAttributes: {
	KeyAlgorithm: #KeyAlgorithm
	KeyClass: #KeyClass
	KeyModesOfUse: #KeyModesOfUse
	KeyUsage: #KeyUsage
}

#KeyModesOfUse: {
	Decrypt?: bool
	DeriveKey?: bool
	Encrypt?: bool
	Generate?: bool
	NoRestrictions?: bool
	Sign?: bool
	Unwrap?: bool
	Verify?: bool
	Wrap?: bool
}

#ReplicationStatusType: {
	Status: #KeyReplicationState
	StatusMessage?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
