package vpnconcentrator

import "github.com/brianterry/cfn-cue-modules/cfn"

// Describes a VPN concentrator.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPNConcentrator"
	Properties: #Properties
}
