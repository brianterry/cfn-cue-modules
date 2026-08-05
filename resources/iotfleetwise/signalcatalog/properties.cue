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

#AllowedValues: [...string]

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

#Node: {
	Branch?: #Branch
} | {
	Sensor?: #Sensor
} | {
	Actuator?: #Actuator
} | {
	Attribute?: #Attribute
}

#NodeCounts: {
	TotalActuators?: number
	TotalAttributes?: number
	TotalBranches?: number
	TotalNodes?: number
	TotalSensors?: number
}

#NodeDataType: "INT8" | "UINT8" | "INT16" | "UINT16" | "INT32" | "UINT32" | "INT64" | "UINT64" | "BOOLEAN" | "FLOAT" | "DOUBLE" | "STRING" | "UNIX_TIMESTAMP" | "INT8_ARRAY" | "UINT8_ARRAY" | "INT16_ARRAY" | "UINT16_ARRAY" | "INT32_ARRAY" | "UINT32_ARRAY" | "INT64_ARRAY" | "UINT64_ARRAY" | "BOOLEAN_ARRAY" | "FLOAT_ARRAY" | "DOUBLE_ARRAY" | "STRING_ARRAY" | "UNIX_TIMESTAMP_ARRAY" | "UNKNOWN"

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
