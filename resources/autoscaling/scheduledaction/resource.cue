package scheduledaction

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AutoScaling::ScheduledAction resource specifies an Amazon EC2 Auto Scaling scheduled action so that the Auto Scaling group can change the number of instances available for your application in response to predictable load changes.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScaling::ScheduledAction"
	Properties: #Properties
}
