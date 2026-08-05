package usageprofile

import "strings"

#Properties: {
	// UsageProfile configuration for supported service ex: (Jobs, Sessions).
	Configuration?: #ProfileConfiguration
	// The description of the UsageProfile.
	Description?: string & =~"[a-zA-Z0-9\\-\\:\\_]{1,64}" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The name of the UsageProfile.
	Name: string & strings.MinRunes(5) & strings.MaxRunes(128)
	// The tags to be applied to this UsageProfiles.
	Tags?: [...#Tag]
}

#ConfigurationObject: {
	AllowedValues?: [...string]
	DefaultValue?: string
	MaxValue?: string
	MinValue?: string
}

#ProfileConfiguration: {
	JobConfiguration?: string
	SessionConfiguration?: string
}

#Tag: {
	// A key to identify the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
