package transitgatewaypolicytable

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayPolicyTable Resource Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayPolicyTable"
	Properties: #Properties
}
