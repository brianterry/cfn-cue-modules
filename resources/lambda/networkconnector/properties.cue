package networkconnector

import "strings"

#Properties: {
	Configuration: #Config
	Name?: #Name
	OperatorRole?: #RoleArn
	// A list of tags to apply to the network connector. Use tags to categorize network connectors for cost allocation, access control, or operational management.
	Tags?: [...#Tag]
}

#Arn: string & =~"^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:network-connector:[a-zA-Z0-9-_]+(:[1-9]|[1-9][0-9]+)?)$" & strings.MinRunes(1) & strings.MaxRunes(140)

#Config: {
	VpcEgressConfiguration: #VpcEgressConfiguration
}

#Name: string & =~"^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:network-connector:[a-zA-Z0-9-_]+(:[1-9]|[1-9][0-9]+)?)|[a-zA-Z0-9_-]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(140)

#RoleArn: string & =~"^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(0) & strings.MaxRunes(10000)

#State: "PENDING" | "ACTIVE" | "INACTIVE" | "FAILED" | "DELETING" | "DELETE_FAILED"

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcEgressConfiguration: {
	// The types of Lambda compute resources that can use this connector. Currently, only MicroVm is supported.
	AssociatedComputeResourceTypes: [..."MicroVm"]
	// The network protocol for the connector. Specify IPv4 for IPv4-only networking, or DualStack for both IPv4 and IPv6.
	NetworkProtocol?: "IPv4" | "DualStack"
	// The IDs of the VPC security groups to attach to the ENIs. Specify 0 to 5 security groups. All security groups must be in the same VPC as the subnets.
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-zA-Z]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)]
	// The IDs of the VPC subnets where Lambda provisions elastic network interfaces (ENIs). Specify 1 to 16 subnets. All subnets must be in the same VPC.
	SubnetIds: [...string & =~"^subnet-[0-9a-z]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)]
}
