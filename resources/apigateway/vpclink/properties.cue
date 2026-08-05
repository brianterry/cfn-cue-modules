package vpclink

#Properties: {
	Description?: string
	Name: string
	// An array of arbitrary tags (key-value pairs) to associate with the VPC link.
	Tags?: [...#Tag]
	TargetArns: [...string]
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string
	// The value for the specified tag key.
	Value: string
}
