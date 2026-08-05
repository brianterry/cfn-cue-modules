package monitor

import "strings"

#Properties: {
	// The local resources to monitor.
	LocalResources: [...#MonitorLocalResource]
	// The name of the monitor.
	MonitorName: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The remote resources to monitor.
	RemoteResources?: [...#MonitorRemoteResource]
	// The Amazon Resource Name (ARN) of the scope for the monitor.
	ScopeArn?: string & =~"^arn:.*$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The tags for the monitor.
	Tags?: [...#Tag]
}

#MonitorLocalResource: {
	// The identifier of the local resource.
	Identifier: string
	// The type of the local resource.
	Type: "AWS::EC2::VPC" | "AWS::AvailabilityZone" | "AWS::EC2::Subnet" | "AWS::Region" | "AWS::EKS::Cluster"
}

#MonitorRemoteResource: {
	// The identifier of the remote resource.
	Identifier: string
	// The type of the remote resource.
	Type: "AWS::EC2::VPC" | "AWS::AvailabilityZone" | "AWS::EC2::Subnet" | "AWS::AWSService" | "AWS::Region"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
