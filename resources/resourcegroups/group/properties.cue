package group

import "strings"

#Properties: {
	Configuration?: #Configuration
	// The description of the resource group
	Description?: string & strings.MaxRunes(512)
	// The name of the resource group
	Name: string & strings.MaxRunes(128)
	ResourceQuery?: #ResourceQuery
	Resources?: [...string]
	Tags?: [...#Tag]
}

#ConfigurationItem: {
	Parameters?: [...#ConfigurationParameter]
	Type?: string
}

#ConfigurationParameter: {
	Name?: string
	Values?: [...string]
}

#Query: {
	ResourceTypeFilters?: [...string]
	StackIdentifier?: string
	TagFilters?: [...#TagFilter]
}

#ResourceQuery: {
	Query?: #Query
	Type?: "TAG_FILTERS_1_0" | "CLOUDFORMATION_STACK_1_0"
}

#Tag: {
	Key?: string & =~"^(?!aws:).+"
	Value?: string
}

#TagFilter: {
	Key?: string
	Values?: [...string]
}
