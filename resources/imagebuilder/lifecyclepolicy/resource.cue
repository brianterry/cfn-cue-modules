package lifecyclepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::LifecyclePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::LifecyclePolicy"
	Properties: #Properties
}
