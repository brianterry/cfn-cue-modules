package prompt

import "strings"

#Properties: {
	// The description of the prompt.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the prompt.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// S3 URI of the customer's audio file for creating prompts resource..
	S3Uri?: string & =~"s3://\\S+/.+|https://\\S+\\.s3(\\.\\S+)?\\.amazonaws\\.com/\\S+" & strings.MinRunes(1) & strings.MaxRunes(2000)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
