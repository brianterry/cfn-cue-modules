package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name for the created Connector.
	ConnectorArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafkaconnect:.*"
}
