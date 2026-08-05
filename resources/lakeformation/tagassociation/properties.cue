package tagassociation

#Properties: {
	// List of Lake Formation Tags to associate with the Lake Formation Resource
	LFTags: #LFTagsList
	// Resource to tag with the Lake Formation Tags
	Resource: #Resource
}

#CatalogIdString: string & strings.MinRunes(12) & strings.MaxRunes(12)

#CatalogResource: {...}

#ColumnNames: [...#NameString]

#DataLakePrincipal: {
	DataLakePrincipalIdentifier?: #DataLakePrincipalString
}

#DataLakePrincipalString: string & strings.MinRunes(1) & strings.MaxRunes(255)

#DatabaseResource: {
	CatalogId: #CatalogIdString
	Name: #NameString
}

#LFTagKey: string & strings.MinRunes(1) & strings.MaxRunes(128)

#LFTagPair: {
	CatalogId: #CatalogIdString
	TagKey: #LFTagKey
	TagValues: #TagValueList
}

#LFTagValue: string & strings.MinRunes(0) & strings.MaxRunes(256)

#LFTagsList: [...#LFTagPair]

#NameString: string & strings.MinRunes(1) & strings.MaxRunes(255)

#Resource: {
	Catalog?: #CatalogResource
	Database?: #DatabaseResource
	Table?: #TableResource
	TableWithColumns?: #TableWithColumnsResource
}

#ResourceType: "DATABASE" | "TABLE"

#TableResource: {
	CatalogId: #CatalogIdString
	DatabaseName: #NameString
	Name?: #NameString
	TableWildcard?: #TableWildcard
}

#TableWildcard: {...}

#TableWithColumnsResource: {
	CatalogId: #CatalogIdString
	ColumnNames: #ColumnNames
	DatabaseName: #NameString
	Name: #NameString
}

#TagValueList: [...#LFTagValue]
