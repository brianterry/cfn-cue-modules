package resourcecollection

import "strings"

#Properties: {
	ResourceCollectionFilter: #ResourceCollectionFilter
}

#CloudFormationCollectionFilter: {
	// An array of CloudFormation stack names.
	StackNames?: [...string & =~"^[a-zA-Z*]+[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#ResourceCollectionFilter: {
	CloudFormation?: #CloudFormationCollectionFilter
	Tags?: #TagCollections
}

#TagCollection: {
	// A Tag key for DevOps Guru app boundary.
	AppBoundaryKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag values of DevOps Guru app boundary.
	TagValues?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
}

#TagCollections: [...#TagCollection]
