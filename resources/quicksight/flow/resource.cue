package flow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QuickSight::Flow Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Flow"
	Properties: #Properties
}
