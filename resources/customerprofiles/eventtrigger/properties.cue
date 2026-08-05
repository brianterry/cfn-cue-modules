package eventtrigger

import "strings"

#Properties: {
	Description?: #Description
	DomainName: #DomainName
	EventTriggerConditions: #EventTriggerConditions
	EventTriggerLimits?: #EventTriggerLimits
	EventTriggerName: #EventTriggerName
	ObjectTypeName: #ObjectTypeName
	SegmentFilter?: #SegmentFilter
	Tags?: #Tags
}

#EventTriggerCondition: {
	EventTriggerDimensions: #EventTriggerDimensions
	LogicalOperator: #EventTriggerLogicalOperator
}

#EventTriggerDimension: {
	ObjectAttributes: #ObjectAttributes
}

#EventTriggerLimits: {
	EventExpiration?: #EventExpiration
	Periods?: #Periods
}

#ObjectAttribute: {
	// The operator used to compare an attribute against a list of values.
	ComparisonOperator: "INCLUSIVE" | "EXCLUSIVE" | "CONTAINS" | "BEGINS_WITH" | "ENDS_WITH" | "GREATER_THAN" | "LESS_THAN" | "GREATER_THAN_OR_EQUAL" | "LESS_THAN_OR_EQUAL" | "EQUAL" | "BEFORE" | "AFTER" | "ON" | "BETWEEN" | "NOT_BETWEEN"
	// A field defined within an object type.
	FieldName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An attribute contained within a source object.
	Source?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// A list of attribute values used for comparison.
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#Period: {
	// The maximum allowed number of destination invocations per profile.
	MaxInvocationsPerProfile?: int & >=1 & <=1000
	// The unit of time.
	Unit: "MINUTES" | "HOURS" | "DAYS" | "WEEKS" | "MONTHS"
	// If set to true, there is no limit on the number of destination invocations per profile. The default is false.
	Unlimited?: bool
	// The amount of time of the specified unit.
	Value: int & >=1 & <=60
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
