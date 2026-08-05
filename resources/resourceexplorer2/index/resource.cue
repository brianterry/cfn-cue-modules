package index

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ResourceExplorer2::Index Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResourceExplorer2::Index"
	Properties: #Properties
}
