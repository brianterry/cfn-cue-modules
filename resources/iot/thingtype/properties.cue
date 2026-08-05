package thingtype

import "strings"

#Properties: {
	DeprecateThingType?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	ThingTypeName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	ThingTypeProperties?: {
		Mqtt5Configuration?: {
			PropagatingAttributes?: [...#PropagatingAttribute]
		}
		SearchableAttributes?: [...string & =~"[a-zA-Z0-9_.,@/:#-]+" & strings.MaxRunes(128)]
		ThingTypeDescription?: string & =~"[\\p{Graph}\\x20]*" & strings.MaxRunes(2028)
	}
}

#PropagatingAttribute: {
	ConnectionAttribute?: "iot:ClientId" | "iot:Thing.ThingName"
	ThingAttribute?: string & =~"[a-zA-Z0-9_.,@/:#-]+" & strings.MaxRunes(128)
	UserPropertyKey: string & =~"[a-zA-Z0-9:$.]+" & strings.MaxRunes(128)
}

#Tag: {
	// Tag key (1-128 chars). No 'aws:' prefix. Allows: [A-Za-z0-9 _.:/=+-]
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value (1-256 chars). No 'aws:' prefix. Allows: [A-Za-z0-9 _.:/=+-]
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
