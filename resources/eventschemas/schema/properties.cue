package schema

#Properties: {
	// The source of the schema definition.
	Content: string
	// A description of the schema.
	Description?: string
	// The name of the schema registry.
	RegistryName: string
	// The name of the schema.
	SchemaName?: string
	// Tags associated with the resource.
	Tags?: [...#TagsEntry]
	// The type of schema. Valid types include OpenApi3 and JSONSchemaDraft4.
	Type: string
}

#TagsEntry: {
	Key: string
	Value: string
}
