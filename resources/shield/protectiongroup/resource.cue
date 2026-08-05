package protectiongroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// A grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Shield::ProtectionGroup"
	Properties: #Properties
}
