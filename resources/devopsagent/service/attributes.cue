package service

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the service
	ServiceId: #ServiceId
	// List of accessible resources for this service
	AccessibleResources: [...{...}]
	// Additional details specific to the service type
	AdditionalServiceDetails: #AdditionalServiceDetails
	// The Amazon Resource Name (ARN) of the Service.
	Arn: string
}
