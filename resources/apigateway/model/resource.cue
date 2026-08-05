package model

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Model`` resource defines the structure of a request or response payload for an API method.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Model"
	Properties: #Properties
}
