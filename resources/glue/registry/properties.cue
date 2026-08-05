package registry

import "strings"

#Properties: {
	// A description of the registry. If description is not provided, there will not be any default value for this.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	// Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.  No whitespace.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// List of tags to tag the Registry
	Tags?: [...#Tag]
}

#Tag: {
	// A key to identify the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
