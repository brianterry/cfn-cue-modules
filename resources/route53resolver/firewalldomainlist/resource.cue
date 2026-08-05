package firewalldomainlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::FirewallDomainList.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::FirewallDomainList"
	Properties: #Properties
}
