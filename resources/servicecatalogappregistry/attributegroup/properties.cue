package attributegroup

import "strings"

#Properties: {
	Attributes: {...}
	// The description of the attribute group.
	Description?: string & strings.MaxRunes(1024)
	// The name of the attribute group.
	Name: string & =~"\\w+" & strings.MinRunes(1) & strings.MaxRunes(256)
	Tags?: #Tags
}
