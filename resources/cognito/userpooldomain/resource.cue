package userpooldomain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolDomain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolDomain"
	Properties: #Properties
}
