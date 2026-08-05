package instance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The EC2 Instance ID.
	InstanceId: string
	// The private IP address of the specified instance. For example: 10.24.34.0.
	PrivateIp: string
	// The public DNS name of the specified instance. For example: ec2-107-20-50-45.compute-1.amazonaws.com.
	PublicDnsName: string
	// The public IP address of the specified instance. For example: 192.0.2.0.
	PublicIp: string
	// The private DNS name of the specified instance. For example: ip-10-24-34-0.ec2.internal.
	PrivateDnsName: string
	// The ID of the VPC that the instance is running in.
	VpcId: string
	// The current state of the instance.
	State: #State
}
