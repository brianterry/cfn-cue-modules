package executionplan

import "strings"

#Properties: {
	// Capacity units
	CapacityUnits?: #CapacityUnitsConfiguration
	// A description for the execution plan
	Description?: #Description
	Name: #Name
	// Tags for labeling the execution plan
	Tags?: #Tags
}

#CapacityUnitsConfiguration: {
	RescoreCapacityUnits: #RescoreCapacityUnits
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
