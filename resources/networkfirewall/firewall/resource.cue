package firewall

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::NetworkFirewall::Firewall
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFirewall::Firewall"
	Properties: #Properties
}
