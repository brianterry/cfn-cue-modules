package graphsnapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::NeptuneGraph::GraphSnapshot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NeptuneGraph::GraphSnapshot"
	Properties: #Properties
}
