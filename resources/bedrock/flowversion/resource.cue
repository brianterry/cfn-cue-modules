package flowversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::FlowVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::FlowVersion"
	Properties: #Properties
}
