package organizationalunit

import "strings"

#Properties: {
	// The friendly name of this OU.
	Name: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The unique identifier (ID) of the parent root or OU that you want to create the new OU in.
	ParentId: string & =~"^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$" & strings.MaxRunes(100)
	// A list of tags that you want to attach to the newly created OU.
	Tags?: [...#Tag]
}

#Tag: {
	// The key identifier, or name, of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The string value that's associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
