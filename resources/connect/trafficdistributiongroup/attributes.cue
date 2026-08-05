package trafficdistributiongroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the traffic distribution group.
	TrafficDistributionGroupArn: string & =~"^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9]{1}:[0-9]{1,20}:traffic-distribution-group/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"
	// The status of the traffic distribution group.
	Status: "CREATION_IN_PROGRESS" | "ACTIVE" | "CREATION_FAILED" | "PENDING_DELETION" | "DELETION_FAILED" | "UPDATE_IN_PROGRESS"
	// If this is the default traffic distribution group.
	IsDefault: bool
}
