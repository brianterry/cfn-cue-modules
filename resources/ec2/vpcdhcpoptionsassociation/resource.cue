package vpcdhcpoptionsassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates a set of DHCP options with a VPC, or associates no DHCP options with the VPC.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCDHCPOptionsAssociation"
	Properties: #Properties
}
