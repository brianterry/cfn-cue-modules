package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MWAA::Environment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MWAA::Environment"
	Properties: #Properties
}
