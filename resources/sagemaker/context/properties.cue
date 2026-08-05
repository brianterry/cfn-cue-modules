package context

import "strings"

#Properties: {
	// The name of the context. Must be unique to your account in an AWS Region.
	ContextName: string & =~"^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,119}$" & strings.MinRunes(1) & strings.MaxRunes(120)
	// The context type.
	ContextType: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// The description of the context.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(3072)
	// A list of properties to add to the context.
	Properties?: {...}
	// The source type, ID, and URI.
	Source: {
		SourceId?: string & strings.MinRunes(0) & strings.MaxRunes(256)
		SourceType?: string & strings.MinRunes(0) & strings.MaxRunes(256)
		SourceUri: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	}
	// A list of tags to apply to the context.
	Tags?: [...{
		Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}
