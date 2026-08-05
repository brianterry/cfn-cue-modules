package firewallpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::NetworkFirewall::FirewallPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFirewall::FirewallPolicy"
	Properties: #Properties
}
