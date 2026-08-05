package resolverconfig

import "strings"

#Properties: {
	// Represents the desired status of AutodefinedReverse. The only supported value on creation is DISABLE. Deletion of this resource will return AutodefinedReverse to its default value (ENABLED).
	AutodefinedReverseFlag: "DISABLE"
	// ResourceId
	ResourceId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
