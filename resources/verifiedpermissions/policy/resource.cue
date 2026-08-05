package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::VerifiedPermissions::Policy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VerifiedPermissions::Policy"
	Properties: #Properties
}
