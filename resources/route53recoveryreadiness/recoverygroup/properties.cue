package recoverygroup

import "strings"

#Properties: {
	// A list of the cell Amazon Resource Names (ARNs) in the recovery group.
	Cells?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// The name of the recovery group to create.
	RecoveryGroupName?: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A collection of tags associated with a resource.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
