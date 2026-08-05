package userpoolresourceserver

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolResourceServer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolResourceServer"
	Properties: #Properties
}
