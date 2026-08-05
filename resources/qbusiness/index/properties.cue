package index

import "strings"

#Properties: {
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	CapacityConfiguration?: #IndexCapacityConfiguration
	Description?: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(1000)
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	DocumentAttributeConfigurations?: [...#DocumentAttributeConfiguration]
	Tags?: [...#Tag]
	Type?: #IndexType
}

#DocumentAttributeConfiguration: {
	Name?: string & =~"^[a-zA-Z0-9_][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(30)
	Search?: #Status
	Type?: #AttributeType
}

#IndexCapacityConfiguration: {
	Units?: number & >=1
}

#IndexStatistics: {
	TextDocumentStatistics?: #TextDocumentStatistics
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TextDocumentStatistics: {
	IndexedTextBytes?: number & >=0
	IndexedTextDocumentCount?: number & >=0
}
