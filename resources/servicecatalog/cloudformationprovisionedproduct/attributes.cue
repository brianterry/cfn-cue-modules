package cloudformationprovisionedproduct

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RecordId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	CloudformationStackArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// List of key-value pair outputs.
	Outputs: {...}
	ProvisionedProductId: string & strings.MinRunes(1) & strings.MaxRunes(50)
}
