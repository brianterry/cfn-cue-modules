package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RefactorSpaces::Service Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RefactorSpaces::Service"
	Properties: #Properties
}
