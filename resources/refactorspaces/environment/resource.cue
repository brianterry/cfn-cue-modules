package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RefactorSpaces::Environment Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RefactorSpaces::Environment"
	Properties: #Properties
}
