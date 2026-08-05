package publishingdestination

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the publishing destination.
	Id: string
	// The status of the publishing destination.
	Status: string
	// The time, in epoch millisecond format, at which GuardDuty was first unable to publish findings to the destination.
	PublishingFailureStartTimestamp: string
}
