package model

#Properties: {
	// The API identifier.
	ApiId: string
	// The content-type for the model, for example, "application/json".
	ContentType?: string
	// The description of the model.
	Description?: string
	// The name of the model.
	Name: string
	// The schema for the model. For application/json models, this should be JSON schema draft 4 model.
	Schema: {...}
}
