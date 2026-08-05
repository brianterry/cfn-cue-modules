package theme

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Theme Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Theme"
	Properties: #Properties
}
