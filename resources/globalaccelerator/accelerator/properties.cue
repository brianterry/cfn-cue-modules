package accelerator

import "strings"

#Properties: {
	// Indicates whether an accelerator is enabled. The value is true or false.
	Enabled?: bool
	// Indicates whether flow logs are enabled for the accelerator.
	FlowLogsEnabled?: bool
	// The name of the Amazon S3 bucket for the flow logs.
	FlowLogsS3Bucket?: string & strings.MaxRunes(255)
	// The prefix for the location in the Amazon S3 bucket for the flow logs.
	FlowLogsS3Prefix?: string & strings.MaxRunes(255)
	// IP Address type.
	IpAddressType?: "IPV4" | "DUAL_STACK"
	// The IP addresses from BYOIP Prefix pool.
	IpAddresses?: [...#IpAddress]
	// Name of accelerator.
	Name: string & =~"^[a-zA-Z0-9_-]{0,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: [...#Tag]
}

#Tag: {
	// Key of the tag. Value can be 1 to 127 characters.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// Value for the tag. Value can be 1 to 255 characters.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
