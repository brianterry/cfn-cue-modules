package analysis

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Analysis Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Analysis"
	Properties: #Properties
}
