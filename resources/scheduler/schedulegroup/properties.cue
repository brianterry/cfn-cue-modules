package schedulegroup

import "strings"

#Properties: {
	Name?: string & =~"^[0-9a-zA-Z-_.]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The list of tags to associate with the schedule group.
	Tags?: [...#Tag]
}

#Tag: {
	// Key for the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Value for the tag
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
