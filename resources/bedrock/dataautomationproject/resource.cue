package dataautomationproject

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::DataAutomationProject Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::DataAutomationProject"
	Properties: #Properties
}
