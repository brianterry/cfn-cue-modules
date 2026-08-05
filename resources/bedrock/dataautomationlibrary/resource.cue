package dataautomationlibrary

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Bedrock::DataAutomationLibrary
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::DataAutomationLibrary"
	Properties: #Properties
}
