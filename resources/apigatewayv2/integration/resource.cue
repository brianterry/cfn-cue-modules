package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGatewayV2::Integration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Integration"
	Properties: #Properties
}
