package schemaversion

import "strings"

#Properties: {
	Schema: #Schema
	// Complete definition of the schema in plain-text.
	SchemaDefinition: string & strings.MinRunes(1) & strings.MaxRunes(170000)
}

#Schema: {
	// Name of the registry to identify where the Schema is located.
	RegistryName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Amazon Resource Name for the Schema. This attribute can be used to uniquely represent the Schema.
	SchemaArn?: string & =~"arn:(aws|aws-us-gov|aws-cn):glue:.*"
	// Name of the schema. This parameter requires RegistryName to be provided.
	SchemaName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
