package instance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	InstanceArn: string
	// SSH Key Name of the  Lightsail instance.
	SshKeyName: string
	// Support code to help identify any issues
	SupportCode: string
	// Resource type of Lightsail instance.
	ResourceType: string
	// Is the IP Address of the Instance is the static IP
	IsStaticIp: bool
	// Private IP Address of the Instance
	PrivateIpAddress: string
	// Public IP Address of the Instance
	PublicIpAddress: string
	// IPv6 addresses of the instance
	Ipv6Addresses: [...string]
	Location: #Location
	Hardware: #Hardware
	State: #State
	// Username of the  Lightsail instance.
	UserName: string
	Networking: #Networking
}
