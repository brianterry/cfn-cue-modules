package assistantassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AssistantAssociation Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AssistantAssociation"
	Properties: #Properties
}
