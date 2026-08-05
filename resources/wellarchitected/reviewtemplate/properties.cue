package reviewtemplate

import "strings"

#Properties: {
	// The review template description.
	Description: string & =~"^[A-Za-z0-9-_.,:/()@!&?#+''\\s]+$" & strings.MinRunes(3) & strings.MaxRunes(250)
	// The lenses applied to the review template.
	Lenses: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]
	// The notes associated with the review template.
	Notes?: string & strings.MinRunes(0) & strings.MaxRunes(2084)
	// The tags assigned to the review template.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
	// The name of the review template.
	TemplateName: string & =~"^[A-Za-z0-9-_.,:/()@!&?#+''\\s]+$" & strings.MinRunes(3) & strings.MaxRunes(100)
}
