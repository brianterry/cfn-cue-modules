package crossaccountattachment

import "strings"

#Properties: {
	// The Friendly identifier of the attachment.
	Name: string & =~"^[a-zA-Z0-9_-]{0,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Principals to share the resources with.
	Principals?: [...string]
	// Resources shared using the attachment.
	Resources?: [...#Resource]
	Tags?: [...#Tag]
}

#Resource: {
	Cidr?: string
	EndpointId?: string
	Region?: string
}

#Tag: {
	// Key of the tag. Value can be 1 to 127 characters.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// Value for the tag. Value can be 1 to 255 characters.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
