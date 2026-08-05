package knowledgebase

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::KnowledgeBase Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::KnowledgeBase"
	Properties: #Properties
}
