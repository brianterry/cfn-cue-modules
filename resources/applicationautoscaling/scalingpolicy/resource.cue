package scalingpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApplicationAutoScaling::ScalingPolicy`` resource defines a scaling policy that Application Auto Scaling uses to adjust the capacity of a scalable target.
// For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html) and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html) in the *Application Auto Scaling User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationAutoScaling::ScalingPolicy"
	Properties: #Properties
}
