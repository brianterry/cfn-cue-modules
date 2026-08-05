package workflowdefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the workflow definition.
	Arn: string & =~"^arn:(aws|aws-cn|aws-us-gov):nova-act:[a-z0-9-]+:[0-9]{12}:workflow-definition/[a-zA-Z0-9_-]{1,40}$"
	// The timestamp when the workflow definition was created.
	CreatedAt: string
	// The current status of the workflow definition.
	Status: "ACTIVE" | "DELETING"
}
