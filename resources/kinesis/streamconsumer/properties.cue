package streamconsumer

import "strings"

#Properties: {
	// The name of the Kinesis Stream Consumer. For a given Kinesis data stream, each consumer must have a unique name. However, consumer names don't have to be unique across data streams.
	ConsumerName: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon resource name (ARN) of the Kinesis data stream that you want to register the consumer with.
	StreamARN: string & =~"^arn:aws.*:kinesis:.*:\\d{12}:stream/\\S+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// An arbitrary set of tags (key–value pairs) to associate with the Kinesis consumer.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
