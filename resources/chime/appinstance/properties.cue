package appinstance

import "strings"

#Properties: {
	// The metadata of the AppInstance. Limited to a 1KB string in UTF-8.
	Metadata?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The name of the AppInstance.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Tags assigned to the AppInstance.
	Tags?: [...#Tag]
}

#Tag: {
	// The key in a tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value in a tag.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
