package routernetworkinterface

import "strings"

#Properties: {
	Configuration: #RouterNetworkInterfaceConfiguration
	// The name of the router network interface.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The AWS Region for the router network interface. Defaults to the current region if not specified.
	RegionName?: string
	// Key-value pairs that can be used to tag and organize this router network interface.
	Tags?: [...#Tag]
}

#PublicRouterNetworkInterfaceConfiguration: {
	// The list of allowed CIDR blocks for the public router network interface.
	AllowRules: [...#PublicRouterNetworkInterfaceRule]
}

#PublicRouterNetworkInterfaceRule: {
	// The CIDR block that is allowed to access the public router network interface.
	Cidr: string
}

#RouterNetworkInterfaceConfiguration: {
	Public: #PublicRouterNetworkInterfaceConfiguration
} | {
	Vpc: #VpcRouterNetworkInterfaceConfiguration
}

#RouterNetworkInterfaceState: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "ERROR" | "RECOVERING"

#RouterNetworkInterfaceType: "PUBLIC" | "VPC"

#Tag: {
	Key: string
	Value: string
}

#Unit: {...}

#VpcRouterNetworkInterfaceConfiguration: {
	// The IDs of the security groups to associate with the router network interface within the VPC.
	SecurityGroupIds: [...string]
	// The ID of the subnet within the VPC to associate the router network interface with.
	SubnetId: string
}
