package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RefactorSpaces::Application Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RefactorSpaces::Application"
	Properties: #Properties
}
