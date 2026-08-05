package dhcpoptions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::DHCPOptions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::DHCPOptions"
	Properties: #Properties
}
