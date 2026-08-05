package useraccessloggingsettings

import "strings"

#Properties: {
	// Kinesis stream ARN to which log events are published.
	KinesisStreamArn: string & =~"arn:[\\w+=/,.@-]+:kinesis:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:stream/.+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
