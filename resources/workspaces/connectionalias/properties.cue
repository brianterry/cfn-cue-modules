package connectionalias

import "strings"

#Properties: {
	ConnectionString: string & =~"^[.0-9a-zA-Z\\-]{1,255}$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: [...#Tag]
}

#ConnectionAliasAssociation: {
	AssociatedAccountId?: string
	AssociationStatus?: "NOT_ASSOCIATED" | "PENDING_ASSOCIATION" | "ASSOCIATED_WITH_OWNER_ACCOUNT" | "ASSOCIATED_WITH_SHARED_ACCOUNT" | "PENDING_DISASSOCIATION"
	ConnectionIdentifier?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(20)
	ResourceId?: string & =~".+" & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#Tag: {
	Key: string
	Value: string
}
