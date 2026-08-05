package applicationinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ApplicationInstanceId: #ApplicationInstanceId
	Arn: #ApplicationInstanceArn
	Status: #ApplicationInstanceStatus
	HealthStatus: #ApplicationInstanceHealthStatus
	StatusDescription: #ApplicationInstanceStatusDescription
	DefaultRuntimeContextDeviceName: #DeviceName
	CreatedTime: #Timestamp
	LastUpdatedTime: #Timestamp
}
