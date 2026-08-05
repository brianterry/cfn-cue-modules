package endpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the endpoint.
	Arn: string & =~"^arn:[^:]+:s3-outposts:[a-zA-Z0-9\\-]+:\\d{12}:outpost\\/[^:]+\\/endpoint/[a-zA-Z0-9]{19}$" & strings.MinRunes(5) & strings.MaxRunes(500)
	// The VPC CIDR committed by this endpoint.
	CidrBlock: string & strings.MinRunes(1) & strings.MaxRunes(20)
	// The time the endpoint was created.
	CreationTime: #iso8601UTC
	// The ID of the endpoint.
	Id: string & =~"^[a-zA-Z0-9]{19}$" & strings.MinRunes(5) & strings.MaxRunes(500)
	// The network interfaces of the endpoint.
	NetworkInterfaces: [...#NetworkInterface]
	Status: "Available" | "Pending" | "Deleting" | "Create_Failed" | "Delete_Failed"
}
