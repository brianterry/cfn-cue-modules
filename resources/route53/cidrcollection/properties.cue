package cidrcollection

import "strings"

#Properties: {
	// A complex type that contains information about the list of CIDR locations.
	Locations?: [...#Location]
	// A unique name for the CIDR collection.
	Name: string & =~"^[0-9A-Za-z_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Location: {
	// A list of CIDR blocks.
	CidrList: [...string]
	// The name of the location that is associated with the CIDR collection.
	LocationName: string & strings.MinRunes(1) & strings.MaxRunes(16)
}
