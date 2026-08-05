package stage

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Stage`` resource creates a stage for a deployment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Stage"
	Properties: #Properties
}
