package hookversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Publishes new or first hook version to AWS CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::HookVersion"
	Properties: #Properties
}
