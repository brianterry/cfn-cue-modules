package group

import "strings"

#Properties: {
	// A string containing the description of the group.
	Description?: string & =~"^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  \u3000]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A string containing the name of the group. This value is commonly displayed when the group is referenced.
	DisplayName: string & =~"^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The globally unique identifier for the identity store.
	IdentityStoreId: string & =~"^d-[0-9a-f]{10}$|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(1) & strings.MaxRunes(36)
}
