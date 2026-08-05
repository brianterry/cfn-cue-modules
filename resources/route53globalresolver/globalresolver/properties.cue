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

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
