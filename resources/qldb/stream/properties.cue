package stream

import "strings"

#Properties: {
	ExclusiveEndTime?: string
	InclusiveStartTime: string
	KinesisConfiguration: #KinesisConfiguration
	LedgerName: string
	RoleArn: #Arn
	StreamName: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Arn: string & =~"arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"

#KinesisConfiguration: {
	AggregationEnabled?: bool
	StreamArn?: #Arn
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
