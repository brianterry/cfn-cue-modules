package authorizer

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Authorizer`` resource creates an authorization layer that API Gateway activates for methods that have authorization enabled. API Gateway activates the authorizer when a client calls those methods.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Authorizer"
	Properties: #Properties
}
