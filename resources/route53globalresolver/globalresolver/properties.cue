package globalresolver

import "strings"

#Properties: {
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Description?: #ResourceDescription
	IpAddressType?: #GlobalResolverIpAddressType
	Name: #ResourceName
	ObservabilityRegion?: #Region
	// A list of regions the Global Resolver will exist in. This list cannot be updated and will stay fixed for the duration of the Global Resolver.
	Regions: [...#Region]
	Tags?: [...#Tag]
}

#CRResourceStatus: "CREATING" | "OPERATIONAL" | "UPDATING" | "DELETING"

#GlobalResolverIpAddressType: "IPV4" | "DUAL_STACK"

#IPv4Address: string & =~"((25[0-5]|(2[0-4]|1\\d|[1-9]|)\\d)\\.?\\b){4}" & strings.MinRunes(1) & strings.MaxRunes(15)

#IPv6Address: string & =~"(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}" & strings.MinRunes(1) & strings.MaxRunes(39)

#Region: string & strings.MinRunes(1) & strings.MaxRunes(32)

#ResourceDescription: string & strings.MinRunes(1) & strings.MaxRunes(256)

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
