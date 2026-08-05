package schema

import "strings"

#Properties: {
	CheckpointVersion?: #SchemaVersion
	// Compatibility setting for the schema.
	Compatibility: "NONE" | "DISABLED" | "BACKWARD" | "BACKWARD_ALL" | "FORWARD" | "FORWARD_ALL" | "FULL" | "FULL_ALL"
	// Data format name to use for the schema. Accepted values: 'AVRO', 'JSON', 'PROTOBUF'
	DataFormat: "AVRO" | "JSON" | "PROTOBUF"
	// A description of the schema. If description is not provided, there will not be any default value for this.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	// Name of the schema.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Registry?: #Registry
	// Definition for the initial schema version in plain-text.
	SchemaDefinition?: string & strings.MinRunes(1) & strings.MaxRunes(170000)
	// List of tags to tag the schema
	Tags?: [...#Tag]
}

#Registry: {
	// Amazon Resource Name for the Registry.
	Arn?: string & =~"arn:aws(-(cn|us-gov|iso(-[bef])?))?:glue:.*"
	// Name of the registry in which the schema will be created.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#SchemaVersion: {
	// Indicates if the latest version needs to be updated.
	IsLatest?: bool
	// Indicates the version number in the schema to update.
	VersionNumber?: int & >=1 & <=100000
}

#Tag: {
	// A key to identify the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
