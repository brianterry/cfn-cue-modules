package destination

import "strings"

#Properties: {
	// The name of the destination resource
	DestinationName: string & =~"^[^:*]{1,512}$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// An IAM policy document that governs which AWS accounts can create subscription filters against this destination.
	DestinationPolicy?: string & strings.MinRunes(1)
	// The ARN of an IAM role that permits CloudWatch Logs to send data to the specified AWS resource
	RoleArn: string & strings.MinRunes(1)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ARN of the physical target where the log events are delivered (for example, a Kinesis stream)
	TargetArn: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, - and @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, - and @.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
