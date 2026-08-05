package firewallrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::FirewallRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::FirewallRule"
	Properties: #Properties
}
