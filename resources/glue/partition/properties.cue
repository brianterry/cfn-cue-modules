package partition

#Properties: {
	CatalogId: string
	DatabaseName: string
	PartitionInput: #PartitionInput
	TableName: string
}

#Column: {
	Comment?: string
	Name: string
	Type?: string
}

#Order: {
	Column: string
	SortOrder?: int
}

#PartitionInput: {
	Parameters?: {...}
	StorageDescriptor?: #StorageDescriptor
	Values: [...string]
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
