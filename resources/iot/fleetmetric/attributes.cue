package fleetmetric

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Number (ARN) of a fleet metric metric
	MetricArn: string
	// The creation date of a fleet metric
	CreationDate: #iso8601UTC
	// The last modified date of a fleet metric
	LastModifiedDate: #iso8601UTC
	// The version of a fleet metric
	Version: number
}
