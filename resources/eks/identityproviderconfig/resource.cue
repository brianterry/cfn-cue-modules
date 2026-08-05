package identityproviderconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// An object representing an Amazon EKS IdentityProviderConfig.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::IdentityProviderConfig"
	Properties: #Properties
}
