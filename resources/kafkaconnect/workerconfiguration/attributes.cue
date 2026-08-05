package workerconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the custom configuration.
	WorkerConfigurationArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafkaconnect:.*"
	// The description of a revision of the worker configuration.
	Revision: int
}
