package resource

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Resource`` resource creates a resource in an API.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Resource"
	Properties: #Properties
}
