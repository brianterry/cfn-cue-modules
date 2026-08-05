package deviceprofile

import "strings"

#Properties: {
	// LoRaWANDeviceProfile supports all LoRa specific attributes for service profile for CreateDeviceProfile operation
	LoRaWAN?: #LoRaWANDeviceProfile
	// Name of service profile
	Name?: string & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the device profile.
	Tags?: [...#Tag]
}

#FactoryPresetFreq: int & >=1000000 & <=16700000

#LoRaWANDeviceProfile: {
	ClassBTimeout?: int & >=0 & <=1000
	ClassCTimeout?: int & >=0 & <=1000
	FactoryPresetFreqsList?: [...#FactoryPresetFreq]
	MacVersion?: string & strings.MaxRunes(64)
	MaxDutyCycle?: int & >=0 & <=100
	MaxEirp?: int & >=0 & <=15
	PingSlotDr?: int & >=0 & <=15
	PingSlotFreq?: int & >=1000000 & <=16700000
	PingSlotPeriod?: int & >=128 & <=4096
	RegParamsRevision?: string & strings.MaxRunes(64)
	RfRegion?: string & strings.MaxRunes(64)
	RxDataRate2?: int & >=0 & <=15
	RxDelay1?: int & >=0 & <=15
	RxDrOffset1?: int & >=0 & <=7
	RxFreq2?: int & >=1000000 & <=16700000
	Supports32BitFCnt?: bool
	SupportsClassB?: bool
	SupportsClassC?: bool
	SupportsJoin?: bool
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
