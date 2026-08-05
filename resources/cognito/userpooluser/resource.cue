package userpooluser

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolUser
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolUser"
	Properties: #Properties
}
