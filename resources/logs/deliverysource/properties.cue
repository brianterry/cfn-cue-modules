package deliverysource

import "strings"

#Properties: {
	// A map of key-value pairs to configure the delivery source. Both keys and values must be between 1 and 255 characters in length.
	DeliverySourceConfiguration?: {...}
	// The type of logs being delivered. Only mandatory when the resourceArn could match more than one. In such a case, the error message will contain all the possible options.
	LogType?: string & =~"[\\w-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The unique name of the Log source.
	Name: string & =~"[\\w-]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	// The ARN of the resource that will be sending the logs.
	ResourceArn?: #Arn
	// The tags that have been assigned to this delivery source.
	Tags?: [...#Tag]
}

#Arn: string & =~"[\\w#+=/:,.@-]*\\*?" & strings.MinRunes(16) & strings.MaxRunes(2048)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
