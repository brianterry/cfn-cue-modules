package automatedreasoningpolicyversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::AutomatedReasoningPolicyVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::AutomatedReasoningPolicyVersion"
	Properties: #Properties
}
