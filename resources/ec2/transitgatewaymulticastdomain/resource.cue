package transitgatewaymulticastdomain

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::TransitGatewayMulticastDomain type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayMulticastDomain"
	Properties: #Properties
}
