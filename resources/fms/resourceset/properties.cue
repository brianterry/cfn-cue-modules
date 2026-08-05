package resourceset

import "strings"

#Properties: {
	Description?: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]*)$" & strings.MaxRunes(256)
	Name: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ResourceTypeList: [...#ResourceType]
	Resources?: [...#Resource]
	Tags?: [...#Tag]
}

#Base62Id: string & =~"^([a-z0-9A-Z]*)$" & strings.MinRunes(22) & strings.MaxRunes(22)

#Resource: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#ResourceType: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)

#Tag: {
	Key: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([^\\s]*)$" & strings.MaxRunes(256)
}
