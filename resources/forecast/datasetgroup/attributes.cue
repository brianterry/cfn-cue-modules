package datasetgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the dataset group to delete.
	DatasetGroupArn: string & =~"^[a-zA-Z0-9\\-\\_\\.\\/\\:]+$" & strings.MaxRunes(256)
}
