package knowledgebasepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::KnowledgeBasePolicy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::KnowledgeBasePolicy"
	Properties: #Properties
}
