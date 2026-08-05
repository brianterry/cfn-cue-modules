package lifecyclepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DLM::LifecyclePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DLM::LifecyclePolicy"
	Properties: #Properties
}
