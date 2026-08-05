package workflowdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::NovaAct::WorkflowDefinition Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NovaAct::WorkflowDefinition"
	Properties: #Properties
}
