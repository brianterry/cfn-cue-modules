package package

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	PackageId: #NodePackageId
	Arn: #NodePackageArn
	CreatedTime: #Timestamp
	// A storage location.
	StorageLocation: #StorageLocation
}
