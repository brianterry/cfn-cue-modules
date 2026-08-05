package schemaversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource represents an individual schema version of a schema defined in Glue Schema Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::SchemaVersion"
	Properties: #Properties
}
