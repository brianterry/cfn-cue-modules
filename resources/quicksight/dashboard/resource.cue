package dashboard

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::Dashboard Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Dashboard"
	Properties: #Properties
}
