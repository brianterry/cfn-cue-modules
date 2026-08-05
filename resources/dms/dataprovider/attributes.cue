package dataprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The data provider ARN.
	DataProviderArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The data provider creation time.
	DataProviderCreationTime: string & strings.MinRunes(1) & strings.MaxRunes(40)
}
