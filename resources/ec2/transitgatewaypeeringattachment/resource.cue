package transitgatewaypeeringattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::TransitGatewayPeeringAttachment type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayPeeringAttachment"
	Properties: #Properties
}
