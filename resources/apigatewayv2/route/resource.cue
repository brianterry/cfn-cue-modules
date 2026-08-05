package route

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::Route`` resource creates a route for an API.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Route"
	Properties: #Properties
}
