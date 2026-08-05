package workflowversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::WorkflowVersion Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::WorkflowVersion"
	Properties: #Properties
}
