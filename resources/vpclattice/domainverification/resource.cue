package domainverification

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a Lattice Domain Verification
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::DomainVerification"
	Properties: #Properties
}
