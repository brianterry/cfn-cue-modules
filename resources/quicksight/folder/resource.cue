package folder

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Folder Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Folder"
	Properties: #Properties
}
