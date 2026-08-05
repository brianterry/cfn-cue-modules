package knowledgebase

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::KnowledgeBase Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::KnowledgeBase"
	Properties: #Properties
}
