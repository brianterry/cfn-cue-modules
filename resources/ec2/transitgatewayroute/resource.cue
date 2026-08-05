package transitgatewayroute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::TransitGatewayRoute
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayRoute"
	Properties: #Properties
}
