package registry

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource creates a Registry for authoring schemas as part of Glue Schema Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Registry"
	Properties: #Properties
}
