package firewallrulegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::FirewallRuleGroup.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::FirewallRuleGroup"
	Properties: #Properties
}
