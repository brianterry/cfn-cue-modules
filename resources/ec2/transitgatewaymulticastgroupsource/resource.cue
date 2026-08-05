package transitgatewaymulticastgroupsource

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::TransitGatewayMulticastGroupSource registers and deregisters members and sources (network interfaces) with the transit gateway multicast group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayMulticastGroupSource"
	Properties: #Properties
}
