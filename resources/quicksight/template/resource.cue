package template

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Template Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Template"
	Properties: #Properties
}
