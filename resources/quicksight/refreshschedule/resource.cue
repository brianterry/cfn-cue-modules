package refreshschedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::RefreshSchedule Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::RefreshSchedule"
	Properties: #Properties
}
