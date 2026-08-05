package controlpanel

import "strings"

#Properties: {
	// Cluster to associate with the Control Panel
	ClusterArn?: string & =~"^[A-Za-z0-9:\\/_-]*$"
	// The name of the control panel. You can use any non-white space character in the name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}
