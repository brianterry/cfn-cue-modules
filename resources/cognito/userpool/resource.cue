package userpool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Cognito::UserPool Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPool"
	Properties: #Properties
}
