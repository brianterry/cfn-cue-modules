package signalcatalog

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name?: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Nodes?: [...#Node]
	Tags?: [...#Tag]
}

#Actuator: {
	AllowedValues?: #AllowedValues
	AssignedValue?: string
	DataType: #NodeDataType
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FullyQualifiedName: string
	Max?: number
	Min?: number
	Unit?: string
}

#Attribute: {
	AllowedValues?: #AllowedValues
	AssignedValue?: string
	DataType: #NodeDataType
	DefaultValue?: string
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FullyQualifiedName: string
	Max?: number
	Min?: number
	Unit?: string
}

#Branch: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FullyQualifiedName: string
}

#NodeCounts: {
	TotalActuators?: number
	TotalAttributes?: number
	TotalBranches?: number
	TotalNodes?: number
	TotalSensors?: number
}

#Sensor: {
	AllowedValues?: #AllowedValues
	DataType: #NodeDataType
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FullyQualifiedName: string
	Max?: number
	Min?: number
	Unit?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
