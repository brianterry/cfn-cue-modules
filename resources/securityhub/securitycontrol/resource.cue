package securitycontrol

import "github.com/brianterry/cfn-cue-modules/cfn"

// A security control in Security Hub describes a security best practice related to a specific resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::SecurityControl"
	Properties: #Properties
}
