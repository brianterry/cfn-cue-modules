package resourceset

import "strings"

#Properties: {
	Description?: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]*)$" & strings.MaxRunes(256)
	Name: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ResourceTypeList: [...#ResourceType]
	Resources?: [...#Resource]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([^\\s]*)$" & strings.MaxRunes(256)
}
