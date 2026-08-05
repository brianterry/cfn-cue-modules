package transitgatewaymeteringpolicyentry

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayMeteringPolicyEntry Resource Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayMeteringPolicyEntry"
	Properties: #Properties
}
