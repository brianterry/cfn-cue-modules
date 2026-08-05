package accessgrantsinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the specified Access Grants instance.
	AccessGrantsInstanceArn: #AccessGrantsInstanceArn
	// A unique identifier for the specified access grants instance.
	AccessGrantsInstanceId: string
}
