package scalingpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AutoScaling::ScalingPolicy resource specifies an Amazon EC2 Auto Scaling scaling policy so that the Auto Scaling group can scale the number of instances available for your application.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScaling::ScalingPolicy"
	Properties: #Properties
}
