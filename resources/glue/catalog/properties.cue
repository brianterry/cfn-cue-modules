package catalog

import "strings"

#Properties: {
	// Allows third-party engines to access data in Amazon S3 locations that are registered with Lake Formation.
	AllowFullTableExternalDataAccess?: "True" | "False"
	// A description of the catalog.
	Description?: string & strings.MaxRunes(2048)
	FederatedCatalog?: #FederatedCatalog
	// The name of the catalog to create.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Specifies whether to overwrite child resource permissions with the default permissions.
	OverwriteChildResourcePermissionsWithDefault?: "Accept" | "Deny"
	// A map of key-value pairs that define parameters and properties of the catalog.
	Parameters?: {...}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	TargetRedshiftCatalog?: #TargetRedshiftCatalog
}

#CatalogProperties: {
	// Additional key-value properties for the catalog.
	CustomProperties?: {...}
	DataLakeAccessProperties?: #DataLakeAccessProperties
}

#DataLakeAccessProperties: {
	// Allows third-party engines to access data in Amazon S3 locations that are registered with Lake Formation.
	AllowFullTableExternalDataAccess?: "True" | "False"
	// Specifies a federated catalog type for the native catalog resource.
	CatalogType?: string
	// Turns on or off data lake access for Apache Spark applications that access Amazon Redshift databases in the Data Catalog from any non-Redshift engine.
	DataLakeAccess?: bool
	// A role that will be assumed by Glue for transferring data into/out of the staging bucket during a query.
	DataTransferRole?: string
	// An encryption key that will be used for the staging bucket that will be created along with the catalog.
	KmsKey?: string
	// The name of the managed workgroup associated with the catalog.
	ManagedWorkgroupName?: string
	// The status of the managed workgroup.
	ManagedWorkgroupStatus?: string
	// The name of the Redshift database.
	RedshiftDatabaseName?: string
}

#DataLakePrincipal: {
	// An identifier for the Lake Formation principal.
	DataLakePrincipalIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#FederatedCatalog: {
	// The name of the connection to an external data source.
	ConnectionName?: string
	// A unique identifier for the federated catalog.
	Identifier?: string
}

#PrincipalPermissions: {
	// The permissions that are granted to the principal.
	Permissions?: [..."ALL" | "SELECT" | "ALTER" | "DROP" | "DELETE" | "INSERT" | "CREATE_DATABASE" | "CREATE_TABLE" | "DATA_LOCATION_ACCESS"]
	Principal?: #DataLakePrincipal
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetRedshiftCatalog: {
	// The Amazon Resource Name (ARN) of the catalog resource.
	CatalogArn: string
}
