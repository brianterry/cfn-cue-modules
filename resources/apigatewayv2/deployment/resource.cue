package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::Deployment`` resource creates a deployment for an API.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Deployment"
	Properties: #Properties
}
