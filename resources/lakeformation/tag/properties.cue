package tag

#Properties: {
	// The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
	CatalogId?: #CatalogIdString
	// The key-name for the LF-tag.
	TagKey: #LFTagKey
	// A list of possible values an attribute can take.
	TagValues: #TagValueList
}
