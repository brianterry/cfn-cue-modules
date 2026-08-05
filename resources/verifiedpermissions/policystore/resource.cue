package policystore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a policy store that you can place schema, policies, and policy templates in to validate authorization requests
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VerifiedPermissions::PolicyStore"
	Properties: #Properties
}
