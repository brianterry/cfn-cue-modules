package environment

import "strings"

#Properties: {
	Description?: string & =~"^[a-zA-Z0-9-_\\s\\.\\!\\*\\#\\@\\']+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Name?: string & =~"^(?!env-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	NetworkFabricType?: #NetworkFabricType
	// Metadata that you can assign to help organize the frameworks that you create. Each tag is a key-value pair.
	Tags?: [...#Tag]
}

#Tag: {
	// A string used to identify this tag
	Key: string & =~"^(?!aws:).+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
