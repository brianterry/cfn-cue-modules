package idmappingtable

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(255)
	InputReferenceConfig: #IdMappingTableInputReferenceConfig
	KmsKeyArn?: string & strings.MinRunes(4) & strings.MaxRunes(2048)
	MembershipIdentifier: #UUID
	Name: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
	Tags?: [...#Tag]
}

#IdMappingTableInputReferenceConfig: {
	InputReferenceArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	ManageResourcePolicies: bool
}

#IdMappingTableInputReferenceProperties: {
	IdMappingTableInputSource: [...#IdMappingTableInputSource]
}

#IdMappingTableInputSource: {
	IdNamespaceAssociationId: string
	Type: "SOURCE" | "TARGET"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#UUID: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
