package annotationstore

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	Name: string & =~"^([a-z]){1}([a-z0-9_]){2,254}"
	Reference?: #ReferenceItem
	SseConfig?: #SseConfig
	StoreFormat: #StoreFormat
	StoreOptions?: #StoreOptions
	Tags?: #TagMap
}

#ReferenceItem: {
	ReferenceArn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(127)
}

#SseConfig: {
	KeyArn?: string & =~"arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Type: #EncryptionType
}

#TsvStoreOptions: {
	AnnotationType?: #AnnotationType
	FormatToHeader?: #FormatToHeader
	Schema?: [...#SchemaItem]
}
