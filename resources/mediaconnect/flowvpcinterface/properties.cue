package flowvpcinterface

#Properties: {
	// The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow.
	FlowArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:flow:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	// Immutable and has to be a unique against other VpcInterfaces in this Flow.
	Name: string
	// Role Arn MediaConnect can assume to create ENIs in customer's account.
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*):iam::[0-9]{12}:role/[a-zA-Z0-9_+=,.@-]+$"
	// Security Group IDs to be used on ENI.
	SecurityGroupIds: [...string]
	// Subnet must be in the AZ of the Flow
	SubnetId: string
	// Key-value pairs that can be used to tag and organize this VPC network interface.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
