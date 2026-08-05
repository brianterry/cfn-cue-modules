package stackset

import "github.com/brianterry/cfn-cue-modules/cfn"

// StackSet as a resource provides one-click experience for provisioning a StackSet and StackInstances
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::StackSet"
	Properties: #Properties
}
