package permissions

#Properties: {
	DataLakePrincipal: #DataLakePrincipal
	Permissions?: [...string]
	PermissionsWithGrantOption?: [...string]
	Resource: #Resource
}

#ColumnWildcard: {
	ExcludedColumnNames?: [...string]
}

#DataLakePrincipal: {
	DataLakePrincipalIdentifier?: string
}

#DataLocationResource: {
	CatalogId?: string
	S3Resource?: string
}

#DatabaseResource: {
	CatalogId?: string
	Name?: string
}

#Resource: {
	DataLocationResource?: #DataLocationResource
	DatabaseResource?: #DatabaseResource
	TableResource?: #TableResource
	TableWithColumnsResource?: #TableWithColumnsResource
}

#TableResource: {
	CatalogId?: string
	DatabaseName?: string
	Name?: string
	TableWildcard?: #TableWildcard
}

#TableWithColumnsResource: {
	CatalogId?: string
	ColumnNames?: [...string]
	ColumnWildcard?: #ColumnWildcard
	DatabaseName?: string
	Name?: string
}
