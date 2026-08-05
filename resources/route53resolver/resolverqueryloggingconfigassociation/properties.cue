package resolverqueryloggingconfigassociation

import "strings"

#Properties: {
	// ResolverQueryLogConfigId
	ResolverQueryLogConfigId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// ResourceId
	ResourceId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
