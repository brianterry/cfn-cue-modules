package location

import "strings"

#Properties: {
	LocationName: string & =~"^custom-[A-Za-z0-9\\-]+" & strings.MinRunes(8) & strings.MaxRunes(64)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
