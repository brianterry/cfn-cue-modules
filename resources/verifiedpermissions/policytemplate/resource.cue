package policytemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::VerifiedPermissions::PolicyTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VerifiedPermissions::PolicyTemplate"
	Properties: #Properties
}
