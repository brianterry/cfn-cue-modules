package principalpermissions

#Properties: {
	// The identifier for the GLUDC. By default, the account ID. The GLUDC is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
	Catalog?: #CatalogIdString
	// The permissions granted or revoked.
	Permissions: #PermissionList
	// Indicates the ability to grant permissions (as a subset of permissions granted).
	PermissionsWithGrantOption: #PermissionList
	// The principal to be granted a permission.
	Principal: #DataLakePrincipal
	// The resource to be granted or revoked permissions.
	Resource: #Resource
}

#CatalogIdString: string & strings.MinRunes(12) & strings.MaxRunes(12)

#CatalogResource: {...}

#ColumnNames: [...#NameString]

#ColumnWildcard: {
	// Excludes column names. Any column with this name will be excluded.
	ExcludedColumnNames?: #ColumnNames
}

#DataCellsFilterResource: {
	// A database in the GLUDC.
	DatabaseName: #NameString
	// The name given by the user to the data filter cell.
	Name: #NameString
	// The ID of the catalog to which the table belongs.
	TableCatalogId: #CatalogIdString
	// The name of the table.
	TableName: #NameString
}

#DataLakePrincipal: {
	// An identifier for the LFlong principal.
	DataLakePrincipalIdentifier?: #DataLakePrincipalString
}

#DataLakePrincipalList: [...#DataLakePrincipal]

#DataLakePrincipalString: string & strings.MinRunes(1) & strings.MaxRunes(255)

#DataLocationResource: {
	// The identifier for the GLUDC where the location is registered with LFlong.
	CatalogId: #CatalogIdString
	// The Amazon Resource Name (ARN) that uniquely identifies the data location resource.
	ResourceArn: #ResourceArnString
}

#DatabaseResource: {
	// The identifier for the Data Catalog. By default, it is the account ID of the caller.
	CatalogId: #CatalogIdString
	// The name of the database resource. Unique to the Data Catalog.
	Name: #NameString
}

#Expression: [...#LFTag]

#IAMRoleArn: string & =~"arn:*:iam::[0-9]*:role/.*"

#LFTag: {
	// The key-name for the LF-tag.
	TagKey?: #LFTagKey
	// A list of possible values of the corresponding ``TagKey`` of an LF-tag key-value pair.
	TagValues?: #TagValueList
}

#LFTagKey: string & strings.MinRunes(1) & strings.MaxRunes(128)

#LFTagKeyResource: {
	// The identifier for the GLUDC where the location is registered with GLUDC.
	CatalogId: #CatalogIdString
	// The key-name for the LF-tag.
	TagKey: #NameString
	// A list of possible values for the corresponding ``TagKey`` of an LF-tag key-value pair.
	TagValues: #TagValueList
}

#LFTagPair: {
	CatalogId?: #CatalogIdString
	TagKey: #LFTagKey
	TagValues: #TagValueList
}

#LFTagPolicyResource: {
	// The identifier for the GLUDC. The GLUDC is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your LFlong environment.
	CatalogId: #CatalogIdString
	// A list of LF-tag conditions that apply to the resource's LF-tag policy.
	Expression: #Expression
	// The resource type for which the LF-tag policy applies.
	ResourceType: #ResourceType
}

#LFTagValue: string & strings.MinRunes(0) & strings.MaxRunes(256)

#LFTagsList: [...#LFTagPair]

#NameString: string & strings.MinRunes(1) & strings.MaxRunes(255)

#NullableBoolean: bool

#PathString: string

#Permission: "ALL" | "SELECT" | "ALTER" | "DROP" | "DELETE" | "INSERT" | "DESCRIBE" | "CREATE_DATABASE" | "CREATE_TABLE" | "DATA_LOCATION_ACCESS" | "CREATE_LF_TAG" | "ASSOCIATE" | "GRANT_WITH_LF_TAG_EXPRESSION"

#PermissionList: [...#Permission]

#PrincipalPermissions: {
	DataLakePrincipal?: #DataLakePrincipal
	PermissionList?: #PermissionList
}

#PrincipalPermissionsList: [...#PrincipalPermissions]

#PrincipalResourcePair: {
	Principal: #DataLakePrincipal
	Resource: #Resource
}

#Resource: {
	// The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your LFlong environment.
	Catalog?: #CatalogResource
	// A data cell filter.
	DataCellsFilter?: #DataCellsFilterResource
	// The location of an Amazon S3 path where permissions are granted or revoked.
	DataLocation?: #DataLocationResource
	// The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal.
	Database?: #DatabaseResource
	// The LF-tag key and values attached to a resource.
	LFTag?: #LFTagKeyResource
	// A list of LF-tag conditions that define a resource's LF-tag policy.
	LFTagPolicy?: #LFTagPolicyResource
	// The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal.
	Table?: #TableResource
	// The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.
	TableWithColumns?: #TableWithColumnsResource
}

#ResourceArnString: string

#ResourceType: "DATABASE" | "TABLE"

#TableResource: {
	// The identifier for the Data Catalog. By default, it is the account ID of the caller.
	CatalogId: #CatalogIdString
	// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
	DatabaseName: #NameString
	// The name of the table.
	Name?: #NameString
	// A wildcard object representing every table under a database.
	// At least one of ``TableResource$Name`` or ``TableResource$TableWildcard`` is required.
	TableWildcard?: #TableWildcard
}

#TableWildcard: {...}

#TableWithColumnsResource: {
	// The identifier for the GLUDC where the location is registered with LFlong.
	CatalogId: #CatalogIdString
	// The list of column names for the table. At least one of ``ColumnNames`` or ``ColumnWildcard`` is required.
	ColumnNames?: #ColumnNames
	// A wildcard specified by a ``ColumnWildcard`` object. At least one of ``ColumnNames`` or ``ColumnWildcard`` is required.
	ColumnWildcard?: #ColumnWildcard
	// The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
	DatabaseName: #NameString
	// The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal.
	Name: #NameString
}

#TagValueList: [...#LFTagValue]
