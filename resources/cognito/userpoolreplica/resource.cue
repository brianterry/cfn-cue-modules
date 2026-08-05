package userpoolreplica

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolReplica
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolReplica"
	Properties: #Properties
}
