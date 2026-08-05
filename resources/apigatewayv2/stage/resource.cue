package stage

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGatewayV2::Stage
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Stage"
	Properties: #Properties
}
