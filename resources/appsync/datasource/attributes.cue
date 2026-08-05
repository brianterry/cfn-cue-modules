package datasource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the API key, such as arn:aws:appsync:us-east-1:123456789012:apis/graphqlapiid/datasources/datasourcename.
	DataSourceArn: string
}
