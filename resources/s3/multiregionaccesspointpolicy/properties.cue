package multiregionaccesspointpolicy

import "strings"

#Properties: {
	// The name of the Multi Region Access Point to apply policy
	MrapName: string & =~"^[a-z0-9][-a-z0-9]{1,48}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(50)
	// Policy document to apply to a Multi Region Access Point
	Policy: {...}
}
