package anomalydetector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AnomalyDetector ARN.
	Arn: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:anomalydetector/[a-zA-Z0-9-]+/[0-9A-Za-z][-.0-9A-Z_a-z]*$"
}
