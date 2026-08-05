package customplugin

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the custom plugin to use.
	CustomPluginArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafkaconnect:.*"
	// The revision of the custom plugin.
	Revision: int
	FileDescription: #CustomPluginFileDescription
}
