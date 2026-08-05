package space

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::QuickSight::Space
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Space"
	Properties: #Properties
}
