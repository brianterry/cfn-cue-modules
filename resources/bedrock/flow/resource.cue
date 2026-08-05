package flow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::Flow Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::Flow"
	Properties: #Properties
}
