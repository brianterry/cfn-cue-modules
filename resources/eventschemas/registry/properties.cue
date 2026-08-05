package registry

#Properties: {
	// A description of the registry to be created.
	Description?: string
	// The name of the schema registry.
	RegistryName?: string
	// Tags associated with the resource.
	Tags?: [...#TagsEntry]
}

#TagsEntry: {
	Key: string
	Value: string
}
