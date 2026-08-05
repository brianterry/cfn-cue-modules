package launchconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AutoScaling::LaunchConfiguration resource specifies the launch configuration that can be used by an Auto Scaling group to configure Amazon EC2 instances.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScaling::LaunchConfiguration"
	Properties: #Properties
}
