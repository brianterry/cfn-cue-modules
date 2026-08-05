package catalog

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the catalog.
	CatalogId: string
	// The Amazon Resource Name (ARN) of the catalog.
	ResourceArn: string
	// The time at which the catalog was created.
	CreateTime: int
	// The time at which the catalog was last updated.
	UpdateTime: int
	CatalogProperties: #CatalogProperties
	// An array of PrincipalPermissions objects for default database permissions.
	CreateDatabaseDefaultPermissions: [...#PrincipalPermissions]
	// An array of PrincipalPermissions objects for default table permissions.
	CreateTableDefaultPermissions: [...#PrincipalPermissions]
}
