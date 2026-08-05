package entitytype

import "strings"

#Properties: {
	// The entity type description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name of the entity type.
	Name: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this entity type.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
