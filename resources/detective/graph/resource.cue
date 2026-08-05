package graph

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Detective::Graph
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Detective::Graph"
	Properties: #Properties
}
