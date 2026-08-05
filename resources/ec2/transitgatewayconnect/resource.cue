package transitgatewayconnect

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::TransitGatewayConnect type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayConnect"
	Properties: #Properties
}
