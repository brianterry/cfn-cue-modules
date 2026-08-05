package filter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Inspector Filter resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::InspectorV2::Filter"
	Properties: #Properties
}
