package cloudwatchalarmtemplategroup

import "strings"

#Properties: {
	// A resource's optional description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// A resource's name. Names must be unique within the scope of a resource type in a specific region.
	Name: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #TagMap
}
