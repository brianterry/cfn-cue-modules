package table

import "strings"

#Properties: {
	Compaction?: #Compaction
	IcebergMetadata?: #IcebergMetadata
	Namespace: #Namespace
	OpenTableFormat: #OpenTableFormat
	SnapshotManagement?: #SnapshotManagement
	StorageClassConfiguration?: #StorageClassConfiguration
	TableBucketARN: #TableBucketARN
	TableName: #TableName
	// User tags (key-value pairs) to associate with the table.
	Tags?: [...#Tag]
	WithoutMetadata?: #WithoutMetadata
}

#Compaction: {
	// Indicates whether the Compaction maintenance action is enabled.
	Status?: "enabled" | "disabled"
	// The target file size for the table in MB.
	TargetFileSizeMB?: int & >=64
}

#IcebergMetadata: {
	IcebergPartitionSpec?: #IcebergPartitionSpec
	// Schema definition for flat tables with primitive types only. Mutually exclusive with IcebergSchemaV2.
	IcebergSchema?: #IcebergSchema
	// Schema definition that supports Apache Iceberg nested types (struct, list, map) and primitive types. Mutually exclusive with IcebergSchema.
	IcebergSchemaV2?: #IcebergSchemaV2
	IcebergSortOrder?: #IcebergSortOrder
	TableProperties?: #TableProperties
}

#IcebergPartitionField: {
	// The partition field ID (auto-assigned starting from 1000 if not specified)
	FieldId?: int
	// The name of the partition field
	Name: string
	// The source column ID to partition on
	SourceId: int
	// The partition transform function (identity, bucket[N], truncate[N], year, month, day, hour)
	Transform: string
}

#IcebergPartitionFieldList: [...#IcebergPartitionField]

#IcebergPartitionSpec: {
	// List of partition fields
	Fields: #IcebergPartitionFieldList
	// The partition spec ID (defaults to 0 if not specified)
	SpecId?: int
}

#IcebergSchema: {
	SchemaFieldList: #SchemaFieldList
}

#IcebergSchemaV2: {
	// A list of field IDs that are used as the identifier fields for the table. Identifier fields uniquely identify a row in the table.
	IdentifierFieldIds?: [...int]
	// An optional unique identifier for the schema
	SchemaId?: int
	// The schema fields for the table
	SchemaV2FieldList: #SchemaV2FieldList
	// The type of the top-level schema, which is always 'struct'
	SchemaV2FieldType: "struct"
}

#IcebergSortField: {
	// Sort direction (asc or desc)
	Direction: "asc" | "desc"
	// Null value ordering (nulls-first or nulls-last)
	NullOrder: "nulls-first" | "nulls-last"
	// The source column ID to sort on
	SourceId: int
	// The sort transform function
	Transform: string
}

#IcebergSortFieldList: [...#IcebergSortField]

#IcebergSortOrder: {
	// List of sort fields
	Fields: #IcebergSortFieldList
	// The sort order ID (defaults to 1 if not specified, 0 is reserved for unsorted)
	OrderId?: int
}

#Namespace: string

#OpenTableFormat: "ICEBERG"

#SchemaField: {
	// The unique identifier for the field
	Id?: int
	// The name of the field
	Name: string
	// A Boolean value that specifies whether values are required for each row in this field
	Required?: bool
	// The field type
	Type: string
}

#SchemaFieldList: [...#SchemaField]

#SchemaV2Field: {
	// Optional documentation for the field
	Doc?: string
	// The unique identifier for the field
	Id: int
	// The name of the field
	Name: string
	// A Boolean value that specifies whether values are required for each row in this field
	Required: bool
	// The field type. For primitive types, use a string (e.g., 'int', 'string', 'long'). For nested types, use an object (e.g., {'type': 'struct', 'fields': [...]} for struct, {'type': 'list', 'element-id': N, 'element': 'type'} for list, {'type': 'map', 'key-id': N, 'key': 'type', 'value-id': N, 'value': 'type'} for map).
	Type: string | {...}
}

#SchemaV2FieldList: [...#SchemaV2Field]

#SnapshotManagement: {
	// The maximum age of a snapshot before it can be expired.
	MaxSnapshotAgeHours?: int & >=1
	// The minimum number of snapshots to keep.
	MinSnapshotsToKeep?: int & >=1
	// Indicates whether the SnapshotManagement maintenance action is enabled.
	Status?: "enabled" | "disabled"
}

#StorageClassConfiguration: {
	// The storage class for the table
	StorageClass?: "STANDARD" | "INTELLIGENT_TIERING"
}

#TableARN: string

#TableBucketARN: string

#TableName: string

#TableProperties: {...}

#Tag: {
	// Tag key must be between 1 to 128 characters in length. Tag key cannot start with 'aws:' and can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value must be between 0 to 256 characters in length. Tag value can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Value: string & strings.MaxRunes(256)
}

#VersionToken: string

#WarehouseLocation: string

#WithoutMetadata: "Yes"
