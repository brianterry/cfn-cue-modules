package step

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::EMR::Step
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::Step"
	Properties: #Properties
}
