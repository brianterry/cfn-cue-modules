package privategraphendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NeptuneGraph::PrivateGraphEndpoint resource creates an Amazon NeptuneGraph PrivateGraphEndpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NeptuneGraph::PrivateGraphEndpoint"
	Properties: #Properties
}
