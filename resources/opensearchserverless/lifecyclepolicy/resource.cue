package lifecyclepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::LifecyclePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::LifecyclePolicy"
	Properties: #Properties
}
