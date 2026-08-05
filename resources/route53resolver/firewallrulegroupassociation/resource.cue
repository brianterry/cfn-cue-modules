package firewallrulegroupassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::FirewallRuleGroupAssociation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::FirewallRuleGroupAssociation"
	Properties: #Properties
}
