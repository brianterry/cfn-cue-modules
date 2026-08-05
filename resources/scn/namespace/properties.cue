package namespace

import "strings"

#Properties: {
	// The description of the namespace.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The Amazon Web Services Supply Chain instance identifier.
	InstanceId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The name of the namespace.
	Name: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	// The tags for the namespace.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
