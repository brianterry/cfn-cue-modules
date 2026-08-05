package multiregionendpoint

import "strings"

#Properties: {
	Details: #Details
	// The name of the multi-region endpoint (global-endpoint).
	EndpointName: string & =~"^[\\w\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: #Tags
}

#Details: {
	RouteDetails: #RouteDetails
}

#Tag: {
	// One part of a key-value pair that defines a tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The optional part of a key-value pair that defines a tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
