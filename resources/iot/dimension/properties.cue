package dimension

import "strings"

#Properties: {
	// A unique identifier for the dimension.
	Name?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Specifies the value or list of values for the dimension.
	StringValues: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// Metadata that can be used to manage the dimension.
	Tags?: [...#Tag]
	// Specifies the type of the dimension.
	Type: "TOPIC_FILTER"
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
