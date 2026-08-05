package referencestore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The store's ARN.
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// When the store was created.
	CreationTime: string
	ReferenceStoreId: string & =~"^[0-9]+$" & strings.MinRunes(10) & strings.MaxRunes(36)
}
