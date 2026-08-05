package topic

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Topic Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Topic"
	Properties: #Properties
}
