package userpoolclient

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolClient
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolClient"
	Properties: #Properties
}
