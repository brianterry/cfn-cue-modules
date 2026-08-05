package vpcconnection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the VPC connection.</p>
	Arn: string
	// <p>The time that the VPC connection was created.</p>
	CreatedTime: string
	// <p>The time that the VPC connection was last updated.</p>
	LastUpdatedTime: string
	// <p>A list of network interfaces.</p>
	NetworkInterfaces: [...#NetworkInterface]
	Status: #VPCConnectionResourceStatus
	// <p>The Amazon EC2 VPC ID associated with the VPC connection.</p>
	VPCId: string
}
