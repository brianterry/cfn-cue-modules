package table

#Properties: {
	CatalogId: string
	DatabaseName: string
	Name?: string
	OpenTableFormatInput?: #OpenTableFormatInput
	TableInput?: #TableInput
}

#Column: {
	Comment?: string
	Name: string
	Type?: string
}

#IcebergInput: {
	IcebergTableInput?: #IcebergTableInput
	MetadataOperation?: #MetadataOperation
	Version?: string
}

#IcebergPartitionField: {
	FieldId?: int
	Name: string
	SourceId: int
	Transform: string
}

#IcebergPartitionSpec: {
	Fields: [...#IcebergPartitionField]
	SpecId?: int
}

#IcebergSchema: {
	Fields: [...#IcebergStructField]
	IdentifierFieldIds?: [...int]
	SchemaId?: int
	Type?: string
}

#IcebergSortField: {
	Direction: string
	NullOrder: string
	SourceId: int
	Transform: string
}

#IcebergSortOrder: {
	Fields: [...#IcebergSortField]
	OrderId: int
}

#IcebergStructField: {
	Doc?: string
	Id: int
	Name: string
	Required: bool
	Type: string
}

#IcebergTableInput: {
	Location: string
	PartitionSpec?: #IcebergPartitionSpec
	Properties?: {...}
	Schema: #IcebergSchema
	WriteOrder?: #IcebergSortOrder
}

#OpenTableFormatInput: {
	IcebergInput?: #IcebergInput
}

#Order: {
	Column: string
	SortOrder: int
}

#SchemaId: {
	RegistryName?: string
	SchemaArn?: string
	SchemaName?: string
}

#SchemaReference: {
	SchemaId?: #SchemaId
	SchemaVersionId?: string
	SchemaVersionNumber?: int
}

#SerdeInfo: {
	Name?: string
	Parameters?: {...}
	SerializationLibrary?: string
}

#SkewedInfo: {
	SkewedColumnNames?: [...string]
	SkewedColumnValueLocationMaps?: {...}
	SkewedColumnValues?: [...string]
}

#StorageDescriptor: {
	BucketColumns?: [...string]
	Columns?: [...#Column]
	Compressed?: bool
	InputFormat?: string
	Location?: string
	NumberOfBuckets?: int
	OutputFormat?: string
	Parameters?: {...}
	SchemaReference?: #SchemaReference
	SerdeInfo?: #SerdeInfo
	SkewedInfo?: #SkewedInfo
	SortColumns?: [...#Order]
	StoredAsSubDirectories?: bool
}

#TableIdentifier: {
	CatalogId?: string
	DatabaseName?: string
	Name?: string
	Region?: string
}

#TableInput: {
	Description?: string
	Name?: string
	Owner?: string
	Parameters?: {...}
	PartitionKeys?: [...#Column]
	Retention?: int
	StorageDescriptor?: #StorageDescriptor
	TableType?: string
	TargetTable?: #TableIdentifier
	ViewDefinition?: #ViewDefinition
	ViewExpandedText?: string
	ViewOriginalText?: string
}

#ViewDefinition: {
	Definer?: string
	IsProtected?: bool
	Representations?: [...#ViewRepresentation]
	SubObjects?: [...string]
}

#ViewRepresentation: {
	Dialect?: string
	DialectVersion?: string
	ValidationConnection?: string
	ViewExpandedText?: string
	ViewOriginalText?: string
}
