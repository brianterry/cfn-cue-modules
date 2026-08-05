package resourcegateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a resource gateway for a service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ResourceGateway"
	Properties: #Properties
}
