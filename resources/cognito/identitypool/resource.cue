package identitypool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::IdentityPool
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::IdentityPool"
	Properties: #Properties
}
