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

#Arn: string & strings.MaxRunes(1000)

#CapacityUnitsConfiguration: {
	RescoreCapacityUnits: #RescoreCapacityUnits
}

#Description: string & strings.MaxRunes(1000)

#Id: string & strings.MinRunes(36) & strings.MaxRunes(36)

#Name: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#RescoreCapacityUnits: int & >=0

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]
