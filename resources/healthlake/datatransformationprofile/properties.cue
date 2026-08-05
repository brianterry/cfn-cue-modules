package datatransformationprofile

import "strings"

#Properties: {
	// The identifier (key ID or ARN) of a customer-managed KMS key used to encrypt the profile's template content at rest. If omitted, an AWS owned key is used.
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A human-readable description of the profile's purpose.
	ProfileDescription?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	// The human-readable name of the profile.
	ProfileName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Source?: #Source
	// The source format that this profile converts from.
	SourceFormat: "CCDA" | "CSV"
	// An array of key-value pairs to apply to this profile.
	Tags?: [...#Tag]
}

#ExistingVersionedProfileSource: {
	// The unique identifier of the source profile to clone.
	ProfileId: string
	// The version number of the source profile to clone.
	Version: int
}

#ProfileMappingSource: {
	// Map of template file paths to their Velocity template content.
	ProfileMapping: {...}
}

#Source: {
	ExistingVersionedProfileId?: #ExistingVersionedProfileSource
	ProfileMapping?: #ProfileMappingSource
	StarterProfile?: #StarterProfileSource
}

#StarterProfileSource: {
	// The name of the starter profile to seed the profile from.
	StarterProfileName: string
}

#Tag: {
	// The key of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
