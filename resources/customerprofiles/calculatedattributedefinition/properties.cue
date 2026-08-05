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

#Conditions: {
	ObjectCount?: #ObjectCount
	Range?: #Range
	Threshold?: #Threshold
}

#Range: {
	// The format the timestamp field in your JSON object is specified. This value should be one of EPOCHMILLI or ISO_8601. E.g. if your object type is MyType and source JSON is {"generatedAt": {"timestamp": "2001-07-04T12:08:56.235Z"}}, then TimestampFormat should be "ISO_8601".
	TimestampFormat?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An expression specifying the field in your JSON object from which the date should be parsed. The expression should follow the structure of \"{ObjectTypeName.<Location of timestamp field in JSON pointer format>}\". E.g. if your object type is MyType and source JSON is {"generatedAt": {"timestamp": "1737587945945"}}, then TimestampSource should be "{MyType.generatedAt.timestamp}".
	TimestampSource?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Unit: #RangeUnit
	Value?: #RangeValue
	ValueRange?: #ValueRange
}

#Readiness: {
	// Any information pertaining to the status of the calculated attribute if required.
	Message?: string
	// The progress percentage for including historical data in your calculated attribute.
	ProgressPercentage?: int & >=0 & <=100
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Threshold: {
	Operator: #ThresholdOperator
	Value: #ThresholdValue
}

#ValueRange: {
	// The ending point for this range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	End: int & >=-2147483648 & <=2147483647
	// The starting point for this range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	Start: int & >=-2147483648 & <=2147483647
}
