package attributegroupassociation

import "strings"

#Properties: {
	// The name or the Id of the Application.
	Application: string & =~"\\w+|[a-z0-9]{12}" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name or the Id of the AttributeGroup.
	AttributeGroup: string & =~"\\w+|[a-z0-9]{12}" & strings.MinRunes(1) & strings.MaxRunes(256)
}
