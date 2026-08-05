package transitgatewaymeteringpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayMeteringPolicy Resource Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayMeteringPolicy"
	Properties: #Properties
}
