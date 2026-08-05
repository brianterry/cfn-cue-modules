package agent

import "strings"

#Properties: {
	// Activation key of the Agent.
	ActivationKey?: string & =~"[A-Z0-9]{5}(-[A-Z0-9]{5}){4}" & strings.MaxRunes(29)
	// The name configured for the agent. Text reference used to identify the agent in the console.
	AgentName?: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The ARNs of the security group used to protect your data transfer task subnets.
	SecurityGroupArns?: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/.*$" & strings.MaxRunes(128)]
	// The ARNs of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
	SubnetArns?: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:subnet/.*$" & strings.MaxRunes(128)]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ID of the VPC endpoint that the agent has access to.
	VpcEndpointId?: string & =~"^vpce-[0-9a-f]{17}$"
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
