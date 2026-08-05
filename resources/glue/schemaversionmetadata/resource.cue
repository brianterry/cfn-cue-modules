package schemaversionmetadata

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource adds Key-Value metadata to a Schema version of Glue Schema Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::SchemaVersionMetadata"
	Properties: #Properties
}
