package schema

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource represents a schema of Glue Schema Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Schema"
	Properties: #Properties
}
