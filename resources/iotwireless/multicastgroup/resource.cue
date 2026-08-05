package multicastgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage Multicast groups.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::MulticastGroup"
	Properties: #Properties
}
