package view

import "strings"

#Properties: {
	Filters?: #SearchFilter
	IncludedProperties?: [...#IncludedProperty]
	Scope?: string
	Tags?: #TagMap
	ViewName: string & =~"^[a-zA-Z0-9\\-]{1,64}$"
}

#IncludedProperty: {
	Name: string & strings.MinRunes(1) & strings.MaxRunes(1011)
}

#SearchFilter: {
	FilterString: string & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#TagMap: {...}
