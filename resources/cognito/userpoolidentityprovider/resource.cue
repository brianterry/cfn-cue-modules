package userpoolidentityprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolIdentityProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolIdentityProvider"
	Properties: #Properties
}
