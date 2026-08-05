package deliverysource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS service that is sending logs.
	Service: string & =~"[\\w-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// This array contains the ARN of the AWS resource that sends logs and is represented by this delivery source. Currently, only one ARN can be in the array.
	ResourceArns: [...#Arn]
	// The Amazon Resource Name (ARN) that uniquely identifies this delivery source.
	Arn: #Arn
	// The status of this delivery source. The value can be ACTIVE or INACTIVE.
	Status: "ACTIVE" | "INACTIVE"
	// The reason for the status of this delivery source, such as RESOURCE_DELETED.
	StatusReason: "RESOURCE_DELETED"
}
