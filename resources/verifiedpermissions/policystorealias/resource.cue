package policystorealias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::VerifiedPermissions::PolicyStoreAlias Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VerifiedPermissions::PolicyStoreAlias"
	Properties: #Properties
}
