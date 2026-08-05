package lens

import "strings"

#Properties: {
	// The JSON representation of a lens.
	JSONString?: string & strings.MinRunes(2) & strings.MaxRunes(500000)
	// The version of the lens.
	LensVersion?: string & strings.MinRunes(1) & strings.MaxRunes(32)
	// The tags assigned to the lens.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}
