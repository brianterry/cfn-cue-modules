package schemaversionmetadata

import "strings"

#Properties: {
	// Metadata key
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Represents the version ID associated with the schema version.
	SchemaVersionId: string & =~"[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
	// Metadata value
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
