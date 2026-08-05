package outcome

import "strings"

#Properties: {
	// The outcome description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name of the outcome.
	Name: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this outcome.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
