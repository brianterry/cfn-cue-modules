package directorybucket

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Returns the Amazon Resource Name (ARN) of the specified bucket.
	Arn: #Arn
	// Returns the code for the Availability Zone or Local Zone where the directory bucket was created. An example for the code of an Availability Zone is 'us-east-1f'.
	AvailabilityZoneName: string
}
