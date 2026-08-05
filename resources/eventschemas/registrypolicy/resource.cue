package registrypolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EventSchemas::RegistryPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EventSchemas::RegistryPolicy"
	Properties: #Properties
}
