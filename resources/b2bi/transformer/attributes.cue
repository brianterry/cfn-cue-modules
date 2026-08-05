package transformer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	ModifiedAt: string
	TransformerArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
	TransformerId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
