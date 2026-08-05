package servicenetworkresourceassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// VpcLattice ServiceNetworkResourceAssociation CFN resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ServiceNetworkResourceAssociation"
	Properties: #Properties
}
