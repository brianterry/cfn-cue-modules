package activity

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for Activity
#Resource: cfn.#ResourceBase & {
	Type: "AWS::StepFunctions::Activity"
	Properties: #Properties
}
