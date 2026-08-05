package expressgatewayservice

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ECS::ExpressGatewayService
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::ExpressGatewayService"
	Properties: #Properties
}
