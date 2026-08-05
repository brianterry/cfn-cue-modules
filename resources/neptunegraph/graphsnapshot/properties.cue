package graphsnapshot

import "strings"

#Properties: {
	// The unique identifier of the Neptune Analytics graph to create the snapshot from.
	GraphIdentifier: string & =~"^g-[a-z0-9]{10}$"
	// The snapshot name.
	SnapshotName: string & =~"^(?!gs-)[a-z][a-z0-9]*(-[a-z0-9]+)*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
