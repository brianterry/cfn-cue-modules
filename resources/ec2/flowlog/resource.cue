package flowlog

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a VPC flow log, which enables you to capture IP traffic for a specific network interface, subnet, or VPC.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::FlowLog"
	Properties: #Properties
}
