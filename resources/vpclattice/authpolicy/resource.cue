package authpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates or updates the auth policy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::AuthPolicy"
	Properties: #Properties
}
