package schema

import "strings"

#Properties: {
	// The domain of a Domain dataset group.
	Domain?: "ECOMMERCE" | "VIDEO_ON_DEMAND"
	// Name for the schema.
	Name: string & =~"^[a-zA-Z0-9][a-zA-Z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// A schema in Avro JSON format.
	Schema: string & strings.MaxRunes(10000)
}
