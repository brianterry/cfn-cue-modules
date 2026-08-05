package aggregatorv2

#Properties: {
	// The list of included Regions
	LinkedRegions: [...#Region]
	// Indicates to link a list of included Regions
	RegionLinkingMode: "SPECIFIED_REGIONS"
	Tags?: #Tags
}

#Region: string & =~"^[a-zA-Z0-9-]{1,32}$"

#Tags: {...}
