package customaction

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Chatbot::CustomAction Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chatbot::CustomAction"
	Properties: #Properties
}
