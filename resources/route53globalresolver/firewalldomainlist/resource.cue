package firewalldomainlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::FirewallDomainList
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::FirewallDomainList"
	Properties: #Properties
}
