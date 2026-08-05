package view

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ResourceExplorer2::View Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResourceExplorer2::View"
	Properties: #Properties
}
