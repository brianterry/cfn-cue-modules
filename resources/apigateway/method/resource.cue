package method

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Method`` resource creates API Gateway methods that define the parameters and body that clients must send in their requests.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Method"
	Properties: #Properties
}
