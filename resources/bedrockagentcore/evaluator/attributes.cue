package evaluator

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the evaluator.
	EvaluatorId: string & =~"^(Builtin.[a-zA-Z0-9_-]+|[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10})$"
	// The Amazon Resource Name (ARN) of the evaluator.
	EvaluatorArn: string & =~"^arn:(aws|aws-cn|aws-us-gov):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:evaluator/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// The current status of the evaluator.
	Status: #EvaluatorStatus
	// The timestamp when the evaluator was created.
	CreatedAt: string
	// The timestamp when the evaluator was last updated.
	UpdatedAt: string
}
