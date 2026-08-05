package identitypoolprincipaltag

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::IdentityPoolPrincipalTag
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::IdentityPoolPrincipalTag"
	Properties: #Properties
}
