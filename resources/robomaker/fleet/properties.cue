package fleet

import "strings"

#Properties: {
	// The name of the fleet.
	Name?: string & =~"[a-zA-Z0-9_\\-]{1,255}$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #Tags
}

#Arn: string & =~"arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"

#Tags: {...}
