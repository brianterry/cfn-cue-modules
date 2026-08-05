package project

#Properties: {
	// The IDs of the assets to be associated to the project.
	AssetIds?: [...#AssetId]
	// The ID of the portal in which to create the project.
	PortalId: string
	// A description for the project.
	ProjectDescription?: string
	// A friendly name for the project.
	ProjectName: string
	// A list of key-value pairs that contain metadata for the project.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
