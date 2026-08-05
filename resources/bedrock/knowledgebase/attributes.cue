package knowledgebase

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the knowledge base.
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z]{10}$"
	// The ARN of the knowledge base.
	KnowledgeBaseArn: string & =~"^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:knowledge-base/[0-9a-zA-Z]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// The time at which the knowledge base was created.
	CreatedAt: string
	// The time at which the knowledge base was last updated.
	UpdatedAt: string
	// A list of reasons that the API operation on the knowledge base failed.
	FailureReasons: [...string & strings.MaxRunes(2048)]
	Status: #KnowledgeBaseStatus
}
