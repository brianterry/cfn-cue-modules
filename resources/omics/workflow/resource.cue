package workflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::Workflow Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::Workflow"
	Properties: #Properties
}
