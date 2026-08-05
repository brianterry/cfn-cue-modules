package graph

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NeptuneGraph::Graph resource creates an Amazon NeptuneGraph Graph.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NeptuneGraph::Graph"
	Properties: #Properties
}
