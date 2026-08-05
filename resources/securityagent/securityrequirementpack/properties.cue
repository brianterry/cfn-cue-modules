package securityrequirementpack

import "strings"

#Properties: {
	// Description of the pack
	Description?: string & strings.MaxRunes(500)
	// KMS key for client-side encryption of pack contents
	KmsKeyId?: string & strings.MaxRunes(2048)
	// Name of the security requirement pack
	Name: string & strings.MinRunes(1) & strings.MaxRunes(120)
	// Security requirements within this pack
	SecurityRequirements?: [...#SecurityRequirement]
	// Whether the pack is enabled or disabled
	Status?: "ENABLED" | "DISABLED"
	// Tags for the security requirement pack
	Tags?: [...#Tag]
}

#SecurityRequirement: {
	// Description of the security requirement
	Description: string & strings.MaxRunes(500)
	// Security domain this requirement belongs to
	Domain: string & strings.MaxRunes(10000)
	// How to evaluate compliance with this requirement
	Evaluation: string & strings.MaxRunes(10000)
	// Name of the security requirement
	Name: string & strings.MaxRunes(80)
	// How to remediate non-compliance
	Remediation?: string & strings.MaxRunes(10000)
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
