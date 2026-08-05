package identitysource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::VerifiedPermissions::IdentitySource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VerifiedPermissions::IdentitySource"
	Properties: #Properties
}
