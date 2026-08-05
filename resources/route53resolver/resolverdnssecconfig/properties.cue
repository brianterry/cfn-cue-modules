package resolverdnssecconfig

import "strings"

#Properties: {
	// ResourceId
	ResourceId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
