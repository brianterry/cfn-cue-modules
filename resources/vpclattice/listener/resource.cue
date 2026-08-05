package listener

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a listener for a service. Before you start using your Amazon VPC Lattice service, you must add one or more listeners. A listener is a process that checks for connection requests to your services.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::Listener"
	Properties: #Properties
}
