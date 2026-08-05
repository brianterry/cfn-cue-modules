package registration

import "strings"

#Properties: {
	// The type of registration form to create.
	RegistrationType: string & =~"^[A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An array of tags (key and value pairs) to associate with the registration.
	Tags?: [...#Tag]
}

#Tag: {
	// The key identifier, or name, of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The string value associated with the key of the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
