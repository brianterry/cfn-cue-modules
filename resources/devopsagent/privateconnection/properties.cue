package privateconnection

import "strings"

#Properties: {
	// Certificate for the Private Connection.
	Certificate?: string & strings.MinRunes(1) & strings.MaxRunes(32768)
	// The connection configuration for the Private Connection.
	ConnectionConfiguration: #ConnectionConfiguration
	// Unique name for this Private Connection within the account.
	Name: string & =~"^[a-z0-9]([a-z0-9-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(30)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ConnectionConfiguration: {
	SelfManaged: #SelfManagedMode
} | {
	ServiceManaged: #ServiceManagedMode
}

#SelfManagedMode: {
	// The ARN of the Resource Configuration.
	ResourceConfigurationId: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#ServiceManagedMode: {
	// DNS resolution mode for the resource gateway. Defaults to PUBLIC when not set.
	DnsResolution?: "PUBLIC" | "IN_VPC"
	// IP address or DNS name of the target resource.
	HostAddress: string & =~"^[a-zA-Z0-9.:\\-]+$" & strings.MinRunes(3) & strings.MaxRunes(255)
	// IP address type of the service-managed Resource Gateway.
	IpAddressType?: "IPV4" | "IPV6" | "DUAL_STACK"
	// Number of IPv4 addresses in each ENI for the service-managed Resource Gateway.
	Ipv4AddressesPerEni?: int & >=1 & <=62
	// TCP port ranges that a consumer can use to access the resource.
	PortRanges?: [...string & =~"^((\\d{1,5}\\-\\d{1,5})|(\\d+))$"]
	// Security groups to attach to the service-managed Resource Gateway.
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(11) & strings.MaxRunes(20)]
	// Subnets that the service-managed Resource Gateway will span.
	SubnetIds?: [...string & =~"^subnet-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(15) & strings.MaxRunes(24)]
	// VPC to create the service-managed Resource Gateway in.
	VpcId: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(5) & strings.MaxRunes(50)
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
