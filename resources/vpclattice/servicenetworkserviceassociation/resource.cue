package servicenetworkserviceassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates a service with a service network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ServiceNetworkServiceAssociation"
	Properties: #Properties
}
