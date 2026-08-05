package servicenetworkvpcassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates a VPC with a service network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ServiceNetworkVpcAssociation"
	Properties: #Properties
}
