package lifecyclehook

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AutoScaling::LifecycleHook
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScaling::LifecycleHook"
	Properties: #Properties
}
