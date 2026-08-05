package configuredtableassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConfiguredTableAssociationIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	Arn: string & strings.MaxRunes(256)
}
