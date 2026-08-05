package scalingplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AutoScalingPlans::ScalingPlan
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScalingPlans::ScalingPlan"
	Properties: #Properties
}
