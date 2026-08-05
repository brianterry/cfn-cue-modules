package identitypoolroleattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::IdentityPoolRoleAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::IdentityPoolRoleAttachment"
	Properties: #Properties
}
