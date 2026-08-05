package transitgatewaypolicytableentry

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayPolicyTableEntry Resource Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayPolicyTableEntry"
	Properties: #Properties
}
