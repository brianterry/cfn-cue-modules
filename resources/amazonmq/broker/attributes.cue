package broker

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	Arn: string & =~"^arn:.*"
	// The version in use. This may have more precision than the specified EngineVersion.
	EngineVersionCurrent: string
	IpAddresses: [...string]
	MqttEndpoints: [...string]
	OpenWireEndpoints: [...string]
	// The ID of the current actual configuration.
	ConfigurationId: string
	// The revision of the current actual configuration.
	ConfigurationRevision: string
	StompEndpoints: [...string]
	WssEndpoints: [...string]
	AmqpEndpoints: [...string]
	ConsoleURLs: [...string]
}
