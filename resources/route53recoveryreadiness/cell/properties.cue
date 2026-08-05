package cell

import "strings"

#Properties: {
	// The name of the cell to create.
	CellName?: string & =~"[a-zA-Z0-9_]+" & strings.MaxRunes(64)
	// A list of cell Amazon Resource Names (ARNs) contained within this cell, for use in nested cells. For example, Availability Zones within specific Regions.
	Cells?: [...string]
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
