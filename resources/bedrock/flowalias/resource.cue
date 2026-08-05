package flowalias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::FlowAlias Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::FlowAlias"
	Properties: #Properties
}
