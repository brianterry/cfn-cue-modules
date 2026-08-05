package apikey

import "strings"

#Properties: {
	CustomerId?: string
	Description?: string
	Enabled?: bool
	GenerateDistinctId?: bool
	// A name for the API key. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the API key name. For more information, see [Name Type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).
	// If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
	Name?: string
	StageKeys?: [...#StageKey]
	Tags?: [...#Tag]
	Value?: string
}

#StageKey: {
	RestApiId?: string
	StageName?: string
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MaxRunes(256)
}
