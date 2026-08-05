package rulegroupsnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// RuleGroupsNamespace schema for cloudformation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::APS::RuleGroupsNamespace"
	Properties: #Properties
}
