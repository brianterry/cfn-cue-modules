package label

import "strings"

#Properties: {
	// The label description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name of the label.
	Name: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this label.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
