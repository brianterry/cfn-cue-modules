package schema

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn for the schema.
	SchemaArn: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
}
