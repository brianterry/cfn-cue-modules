package cachecluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Specifies the ConfigurationEndpoint address and port
	ConfigurationEndpoint: #Endpoint
	// Specifies the RedisEndPoint address and port
	RedisEndpoint: #Endpoint
}
