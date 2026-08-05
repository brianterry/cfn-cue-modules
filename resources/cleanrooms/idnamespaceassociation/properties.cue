package idnamespaceassociation

import "strings"

#Properties: {
	Description?: string & =~"^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$" & strings.MaxRunes(255)
	IdMappingConfig?: #IdMappingConfig
	InputReferenceConfig: #IdNamespaceAssociationInputReferenceConfig
	MembershipIdentifier: #UUID
	Name: string & =~"^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Tags?: [...#Tag]
}

#IdMappingConfig: {
	AllowUseAsDimensionColumn: bool
}

#IdNamespaceAssociationInputReferenceConfig: {
	InputReferenceArn: string & strings.MaxRunes(256)
	ManageResourcePolicies: bool
}

#IdNamespaceAssociationInputReferenceProperties: {
	IdMappingWorkflowsSupported?: [...#Document]
	IdNamespaceType?: "SOURCE" | "TARGET"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
