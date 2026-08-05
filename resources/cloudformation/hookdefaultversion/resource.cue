package hookdefaultversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Set a version as default version for a hook in CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::HookDefaultVersion"
	Properties: #Properties
}
