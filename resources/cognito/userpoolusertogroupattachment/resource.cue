package userpoolusertogroupattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolUserToGroupAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolUserToGroupAttachment"
	Properties: #Properties
}
