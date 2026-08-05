package database

#Properties: {
	// The AWS account ID for the account in which to create the catalog object.
	CatalogId: string
	// The metadata for the database.
	DatabaseInput: #DatabaseInput
	// The name of the database. For hive compatibility, this is folded to lowercase when it is store.
	DatabaseName?: string
}

#DataLakePrincipal: {
	// An identifier for the AWS Lake Formation principal.
	DataLakePrincipalIdentifier?: string
}

#DatabaseIdentifier: {
	// The ID of the Data Catalog in which the database resides.
	CatalogId?: string
	// The name of the catalog database.
	DatabaseName?: string
	// Region of the target database.
	Region?: string
}

#DatabaseInput: {
	// Creates a set of default permissions on the table for principals. Used by AWS Lake Formation. Not used in the normal course of AWS Glue operations.
	CreateTableDefaultPermissions?: [...#PrincipalPrivileges]
	// A description of the database.
	Description?: string
	// A FederatedDatabase structure that references an entity outside the AWS Glue Data Catalog.
	FederatedDatabase?: #FederatedDatabase
	// The location of the database (for example, an HDFS path).
	LocationUri?: string
	// The name of the database. For hive compatibility, this is folded to lowercase when it is stored.
	Name?: string
	// These key-value pairs define parameters and properties of the database.
	Parameters?: {...}
	// A DatabaseIdentifier structure that describes a target database for resource linking.
	TargetDatabase?: #DatabaseIdentifier
}

#FederatedDatabase: {
	// The name of the connection to the external metastore.
	ConnectionName?: string
	// A unique identifier for the federated database.
	Identifier?: string
}

#PrincipalPrivileges: {
	// The permissions that are granted to the principal.
	Permissions?: [...string]
	// The principal who is granted permissions.
	Principal?: #DataLakePrincipal
}
