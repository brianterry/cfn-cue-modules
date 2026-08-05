package groupmembership

import "strings"

#Properties: {
	// The unique identifier for a group in the identity store.
	GroupId: string & =~"^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(47)
	// The globally unique identifier for the identity store.
	IdentityStoreId: string & =~"^d-[0-9a-f]{10}$|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// An object containing the identifier of a group member.
	MemberId: #MemberId
}

#MemberId: {
	// The identifier for a user in the identity store.
	UserId: string & =~"^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(47)
}
