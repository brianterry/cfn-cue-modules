package workspace

import "strings"

#Properties: {
	DataResidency?: #DataResidency
	// The name of the workspace.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(40)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DataResidency: {
	// Permitted inference geo values. Omit to allow all geos (the service default of 'unrestricted'); otherwise list specific geos.
	AllowedInferenceGeos?: [...string]
	// Default inference geo applied when requests omit the parameter. Defaults to 'global' if omitted. Must be a member of AllowedInferenceGeos unless AllowedInferenceGeos is omitted.
	DefaultInferenceGeo?: string
	// Geographic region for workspace data storage. Immutable after creation. Defaults to 'us' if omitted.
	WorkspaceGeo?: string
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
