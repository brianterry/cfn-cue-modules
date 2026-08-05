package readinesscheck

import "strings"

#Properties: {
	// Name of the ReadinessCheck to create.
	ReadinessCheckName?: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The name of the resource set to check.
	ResourceSetName?: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A collection of tags associated with a resource.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
