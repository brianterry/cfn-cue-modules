package terms

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::Terms
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::Terms"
	Properties: #Properties
}
