package flowoutput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::FlowOutput
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::FlowOutput"
	Properties: #Properties
}
