package automatedreasoningpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::AutomatedReasoningPolicy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::AutomatedReasoningPolicy"
	Properties: #Properties
}
