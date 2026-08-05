package configurationaggregator

import "strings"

#Properties: {
	AccountAggregationSources?: [...#AccountAggregationSource]
	// The name of the aggregator.
	ConfigurationAggregatorName?: string & =~"[\\w\\-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	OrganizationAggregationSource?: #OrganizationAggregationSource
	// The tags for the configuration aggregator.
	Tags?: [...#Tag]
}

#AccountAggregationSource: {
	AccountIds: [...string]
	AllAwsRegions?: bool
	AwsRegions?: [...string]
}

#OrganizationAggregationSource: {
	AllAwsRegions?: bool
	AwsRegions?: [...string]
	RoleArn: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
