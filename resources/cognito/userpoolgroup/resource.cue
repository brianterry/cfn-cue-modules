package userpoolgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolGroup"
	Properties: #Properties
}
