package instanceconnectendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the EC2 Instance Connect Endpoint.
	Id: string
	// The Availability Zone of the EC2 Instance Connect Endpoint
	AvailabilityZone: string
	// The ID of the Availability Zone of the EC2 Instance Connect Endpoint
	AvailabilityZoneId: string
	// The date and time that the EC2 Instance Connect Endpoint was created
	CreatedAt: string
	// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint
	InstanceConnectEndpointArn: string
	// The ID of the elastic network interface that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint
	NetworkInterfaceIds: [...#NetworkInterfaceId]
	// The ID of the AWS account that created the EC2 Instance Connect Endpoint
	OwnerId: string
	// The public DNS names of the endpoint
	PublicDnsNames: #InstanceConnectEndpointPublicDnsNames
	// The current state of the EC2 Instance Connect Endpoint
	State: "create-in-progress" | "create-complete" | "create-failed" | "delete-in-progress" | "delete-complete" | "delete-failed" | "update-in-progress" | "update-complete" | "update-failed"
	// The message for the current state of the EC2 Instance Connect Endpoint. Can include a failure message
	StateMessage: string
	// The ID of the VPC in which the EC2 Instance Connect Endpoint was created
	VpcId: string
}
