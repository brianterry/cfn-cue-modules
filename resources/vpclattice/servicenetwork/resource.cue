package servicenetwork

import "github.com/brianterry/cfn-cue-modules/cfn"

// A service network is a logical boundary for a collection of services. You can associate services and VPCs with a service network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ServiceNetwork"
	Properties: #Properties
}
