package fargateprofile

import "strings"

#Properties: {
	// Name of the Cluster
	ClusterName: string & strings.MinRunes(1)
	// Name of FargateProfile
	FargateProfileName?: string & strings.MinRunes(1)
	// The IAM policy arn for pods
	PodExecutionRoleArn: string & strings.MinRunes(1)
	Selectors: [...#Selector]
	Subnets?: [...string]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Label: {
	// The key name of the label.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the label. 
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Selector: {
	Labels?: [...#Label]
	Namespace: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
