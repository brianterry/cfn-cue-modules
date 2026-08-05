package cloudformationproduct

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the product, such as prod-tsjbmal34qvek
	Id: string
	// The IDs of the provisioning artifacts
	ProvisioningArtifactIds: string
	// The names of the provisioning artifacts
	ProvisioningArtifactNames: string
	// The name of the product.
	ProductName: string
}
