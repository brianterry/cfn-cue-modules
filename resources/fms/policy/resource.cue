package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an AWS Firewall Manager policy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FMS::Policy"
	Properties: #Properties
}
