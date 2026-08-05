package form

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::AmplifyUIBuilder::Form Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmplifyUIBuilder::Form"
	Properties: #Properties
}
