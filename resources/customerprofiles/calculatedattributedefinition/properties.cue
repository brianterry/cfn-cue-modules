package calculatedattributedefinition

import "strings"

#Properties: {
	AttributeDetails: #AttributeDetails
	CalculatedAttributeName: #CalculatedAttributeName
	Conditions?: #Conditions
	Description?: #Description
	DisplayName?: #DisplayName
	DomainName: #DomainName
	Statistic: #Statistic
	Tags?: #Tags
	// Whether to use historical data for the calculated attribute.
	UseHistoricalData?: bool
}

#AttributeDetails: {
	Attributes: #AttributeList
	Expression: #Expression
}

#AttributeItem: {
	Name: #AttributeName
}

#AttributeList: [...#AttributeItem]

#AttributeName: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#CalculatedAttributeName: string & =~"^[a-zA-Z_][a-zA-Z_0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)

#Conditions: {
	ObjectCount?: #ObjectCount
	Range?: #Range
	Threshold?: #Threshold
}

#Description: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#DisplayName: string & =~"^[a-zA-Z_][a-zA-Z_0-9-\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(255)

#DomainName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#Expression: string & strings.MinRunes(1) & strings.MaxRunes(255)

#ObjectCount: int & >=1 & <=300

#Range: {
	// The format the timestamp field in your JSON object is specified. This value should be one of EPOCHMILLI or ISO_8601. E.g. if your object type is MyType and source JSON is {"generatedAt": {"timestamp": "2001-07-04T12:08:56.235Z"}}, then TimestampFormat should be "ISO_8601".
	TimestampFormat?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An expression specifying the field in your JSON object from which the date should be parsed. The expression should follow the structure of \"{ObjectTypeName.<Location of timestamp field in JSON pointer format>}\". E.g. if your object type is MyType and source JSON is {"generatedAt": {"timestamp": "1737587945945"}}, then TimestampSource should be "{MyType.generatedAt.timestamp}".
	TimestampSource?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Unit: #RangeUnit
	Value?: #RangeValue
	ValueRange?: #ValueRange
}

#RangeUnit: "DAYS"

#RangeValue: int & >=1 & <=2147483647

#Readiness: {
	// Any information pertaining to the status of the calculated attribute if required.
	Message?: string
	// The progress percentage for including historical data in your calculated attribute.
	ProgressPercentage?: int & >=0 & <=100
}

#Statistic: "FIRST_OCCURRENCE" | "LAST_OCCURRENCE" | "COUNT" | "SUM" | "MINIMUM" | "MAXIMUM" | "AVERAGE" | "MAX_OCCURRENCE"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#Threshold: {
	Operator: #ThresholdOperator
	Value: #ThresholdValue
}

#ThresholdOperator: "EQUAL_TO" | "GREATER_THAN" | "LESS_THAN" | "NOT_EQUAL_TO"

#ThresholdValue: string & strings.MinRunes(1) & strings.MaxRunes(255)

#ValueRange: {
	// The ending point for this range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	End: int & >=-2147483648 & <=2147483647
	// The starting point for this range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	Start: int & >=-2147483648 & <=2147483647
}
