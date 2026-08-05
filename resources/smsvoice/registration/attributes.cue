package registration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the registration.
	RegistrationArn: string
	// The unique identifier for the registration.
	RegistrationId: string
	// The status of the registration.
	RegistrationStatus: "CREATED" | "SUBMITTED" | "AWS_REVIEWING" | "REVIEWING" | "REQUIRES_AUTHENTICATION" | "PROVISIONING" | "COMPLETE" | "REQUIRES_UPDATES" | "CLOSED" | "DELETED"
	// The current version number of the registration.
	CurrentVersionNumber: int & >=1 & <=100000
	// The time when the registration was created, in UNIX epoch time format.
	CreatedTimestamp: string
}
