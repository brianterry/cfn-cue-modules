package packageversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	PackageName: #NodePackageName
	PackageArn: #NodePackageArn
	Status: #PackageVersionStatus
	StatusDescription: #PackageVersionStatusDescription
	IsLatestPatch: bool
	RegisteredTime: #TimeStamp
}
