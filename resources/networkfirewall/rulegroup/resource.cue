package rulegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::NetworkFirewall::RuleGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFirewall::RuleGroup"
	Properties: #Properties
}
