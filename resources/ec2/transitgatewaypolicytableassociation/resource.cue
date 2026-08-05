package transitgatewaypolicytableassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayPolicyTableAssociation Resource Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayPolicyTableAssociation"
	Properties: #Properties
}
