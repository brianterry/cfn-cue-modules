package autoscalingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Describes an AWS App Runner automatic configuration resource that enables automatic scaling of instances used to process web requests. You can share an auto scaling configuration across multiple services.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppRunner::AutoScalingConfiguration"
	Properties: #Properties
}
