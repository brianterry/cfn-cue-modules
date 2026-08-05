package serviceprofile

import "strings"

#Properties: {
	// Name of service profile
	Name?: string & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the service profile.
	Tags?: [...#Tag]
}

#LoRaWANServiceProfile: {
	AddGwMetadata?: bool
	ChannelMask?: string
	DevStatusReqFreq?: int
	DlBucketSize?: int
	DlRate?: int
	DlRatePolicy?: string
	DrMax?: int
	DrMin?: int
	HrAllowed?: bool
	MinGwDiversity?: int
	NwkGeoLoc?: bool
	PrAllowed?: bool
	RaAllowed?: bool
	ReportDevStatusBattery?: bool
	ReportDevStatusMargin?: bool
	TargetPer?: int
	UlBucketSize?: int
	UlRate?: int
	UlRatePolicy?: string
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
