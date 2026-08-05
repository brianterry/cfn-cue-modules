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

#AnnotationType: "GENERIC" | "CHR_POS" | "CHR_POS_REF_ALT" | "CHR_START_END_ONE_BASE" | "CHR_START_END_REF_ALT_ONE_BASE" | "CHR_START_END_ZERO_BASE" | "CHR_START_END_REF_ALT_ZERO_BASE"

#EncryptionType: "KMS"

#FormatToHeader: {...}

#FormatToHeaderKey: "CHR" | "START" | "END" | "REF" | "ALT" | "POS"

#ReferenceItem: {
	ReferenceArn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(127)
}

#SchemaItem: {...}

#SchemaValueType: "LONG" | "INT" | "STRING" | "FLOAT" | "DOUBLE" | "BOOLEAN"

#SseConfig: {
	KeyArn?: string & =~"arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Type: #EncryptionType
}

#StoreFormat: "GFF" | "TSV" | "VCF"

#StoreOptions: {
	TsvStoreOptions: #TsvStoreOptions
}

#StoreStatus: "CREATING" | "UPDATING" | "DELETING" | "ACTIVE" | "FAILED"

#TagMap: {...}

#TsvStoreOptions: {
	AnnotationType?: #AnnotationType
	FormatToHeader?: #FormatToHeader
	Schema?: [...#SchemaItem]
}
