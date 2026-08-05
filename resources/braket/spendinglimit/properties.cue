package spendinglimit

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the quantum device to apply the spending limit to.
	DeviceArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The maximum amount that can be spent on the specified device, in USD.
	SpendingLimit: string & =~"^\\d+(\\.\\d{1,2})?$" & strings.MinRunes(1)
	// The tags to apply to the spending limit.
	Tags?: [...#Tag]
	TimePeriod?: #TimePeriod
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TimePeriod: {
	// The end date and time for the spending limit period, in ISO 8601 format.
	EndAt: string
	// The start date and time for the spending limit period, in ISO 8601 format.
	StartAt: string
}
