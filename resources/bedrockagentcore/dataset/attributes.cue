package dataset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the dataset.
	DatasetArn: string & =~"^arn:aws(-[a-z]+)*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:dataset/[a-zA-Z0-9_-]{1,110}$"
	// The unique identifier of the dataset.
	DatasetId: string & =~"^[a-zA-Z0-9_-]{1,110}$"
	// The current status of the dataset.
	Status: "CREATING" | "UPDATING" | "DELETING" | "ACTIVE" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"
	// The number of examples in the dataset DRAFT.
	ExampleCount: int
	// The timestamp when the dataset was created.
	CreatedAt: string
	// The timestamp when the dataset was last updated.
	UpdatedAt: string
}
