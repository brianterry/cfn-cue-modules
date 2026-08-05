package onlineevaluationconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the online evaluation configuration.
	OnlineEvaluationConfigId: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// The Amazon Resource Name (ARN) of the online evaluation configuration.
	OnlineEvaluationConfigArn: string & =~"^arn:(aws|aws-cn|aws-us-gov):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:online-evaluation-config/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// The status of the online evaluation configuration.
	Status: #OnlineEvaluationConfigStatus
	// The configuration that specifies where evaluation results should be written.
	OutputConfig: #OutputConfig
	// The timestamp when the online evaluation configuration was created.
	CreatedAt: string
	// The timestamp when the online evaluation configuration was last updated.
	UpdatedAt: string
}
