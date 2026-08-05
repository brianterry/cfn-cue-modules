package cacertificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Registers a CA Certificate in IoT.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::CACertificate"
	Properties: #Properties
}
