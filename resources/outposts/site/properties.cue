package site

import "strings"

#Properties: {
	Description?: string & =~"^[\\S ]+$" & strings.MinRunes(1) & strings.MaxRunes(1001)
	Name: string & =~"^[\\S ]+$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	Notes?: string & =~"^[\\S \\n]+$" & strings.MinRunes(1) & strings.MaxRunes(2000)
	OperatingAddress?: #Address
	RackPhysicalProperties?: #RackPhysicalProperties
	ShippingAddress?: #Address
	Tags?: [...#Tag]
}

#Address: {
	AddressLine1: string & =~"^\\S[\\S ]*$" & strings.MinRunes(1) & strings.MaxRunes(180)
	AddressLine2?: string & =~"^\\S[\\S ]*$" & strings.MinRunes(0) & strings.MaxRunes(60)
	AddressLine3?: string & =~"^\\S[\\S ]*$" & strings.MinRunes(0) & strings.MaxRunes(60)
	City: string & =~"^\\S[\\S ]*$" & strings.MinRunes(1) & strings.MaxRunes(50)
	ContactName: string & =~"^\\S[\\S ]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	ContactPhoneNumber: string & =~"^[\\S ]+$" & strings.MinRunes(1) & strings.MaxRunes(20)
	CountryCode: string & =~"^[A-Z]{2}$" & strings.MinRunes(2) & strings.MaxRunes(2)
	DistrictOrCounty?: string & =~"^\\S[\\S ]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	Municipality?: string & =~"^\\S[\\S ]*$" & strings.MinRunes(0) & strings.MaxRunes(180)
	PostalCode: string & =~"^[a-zA-Z0-9 -]+$" & strings.MinRunes(1) & strings.MaxRunes(20)
	StateOrRegion: string & =~"^\\S[\\S ]*$" & strings.MinRunes(1) & strings.MaxRunes(50)
}

#RackPhysicalProperties: {
	FiberOpticCableType?: "SINGLE_MODE" | "MULTI_MODE"
	MaximumSupportedWeightLbs?: "NO_LIMIT" | "MAX_1400_LBS" | "MAX_1600_LBS" | "MAX_1800_LBS" | "MAX_2000_LBS"
	OpticalStandard?: "OPTIC_10GBASE_SR" | "OPTIC_10GBASE_IR" | "OPTIC_10GBASE_LR" | "OPTIC_40GBASE_SR" | "OPTIC_40GBASE_ESR" | "OPTIC_40GBASE_IR4_LR4L" | "OPTIC_40GBASE_LR4" | "OPTIC_100GBASE_SR4" | "OPTIC_100GBASE_CWDM4" | "OPTIC_100GBASE_LR4" | "OPTIC_100G_PSM4_MSA" | "OPTIC_1000BASE_LX" | "OPTIC_1000BASE_SX"
	PowerConnector?: "L6_30P" | "IEC309" | "AH530P7W" | "AH532P6W" | "CS8365C"
	PowerDrawKva?: "POWER_5_KVA" | "POWER_10_KVA" | "POWER_15_KVA" | "POWER_30_KVA"
	PowerFeedDrop?: "ABOVE_RACK" | "BELOW_RACK"
	PowerPhase?: "SINGLE_PHASE" | "THREE_PHASE"
	UplinkCount?: "UPLINK_COUNT_1" | "UPLINK_COUNT_2" | "UPLINK_COUNT_3" | "UPLINK_COUNT_4" | "UPLINK_COUNT_5" | "UPLINK_COUNT_6" | "UPLINK_COUNT_7" | "UPLINK_COUNT_8" | "UPLINK_COUNT_12" | "UPLINK_COUNT_16"
	UplinkGbps?: "UPLINK_1G" | "UPLINK_10G" | "UPLINK_40G" | "UPLINK_100G"
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[\\S \\n]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
