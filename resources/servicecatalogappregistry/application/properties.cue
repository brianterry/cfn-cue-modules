package application

import "strings"

#Properties: {
	// The description of the application.
	Description?: string & strings.MaxRunes(1024)
	// The name of the application.
	Name: string & =~"\\w+" & strings.MinRunes(1) & strings.MaxRunes(256)
	Tags?: #Tags
}

#Tags: {...}
