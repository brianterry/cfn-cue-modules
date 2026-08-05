package knowledgebase

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QuickSight::KnowledgeBase Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::KnowledgeBase"
	Properties: #Properties
}
