package tagassociation

#Properties: {
	// List of Lake Formation Tags to associate with the Lake Formation Resource
	LFTags: #LFTagsList
	// Resource to tag with the Lake Formation Tags
	Resource: #Resource
}

#DataLakePrincipal: {
	DataLakePrincipalIdentifier?: #DataLakePrincipalString
}

#DatabaseResource: {
	CatalogId: #CatalogIdString
	Name: #NameString
}

#LFTagPair: {
	CatalogId: #CatalogIdString
	TagKey: #LFTagKey
	TagValues: #TagValueList
}

#Resource: {
	Catalog?: #CatalogResource
	Database?: #DatabaseResource
	Table?: #TableResource
	TableWithColumns?: #TableWithColumnsResource
}

#TableResource: {
	CatalogId: #CatalogIdString
	DatabaseName: #NameString
	Name?: #NameString
	TableWildcard?: #TableWildcard
}

#TableWithColumnsResource: {
	CatalogId: #CatalogIdString
	ColumnNames: #ColumnNames
	DatabaseName: #NameString
	Name: #NameString
}
