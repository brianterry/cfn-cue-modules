package datacellsfilter

#Properties: {
	// A list of columns to be included in this Data Cells Filter.
	ColumnNames?: #ColumnNames
	// An object representing the Data Cells Filter's Columns. Either Column Names or a Wildcard is required
	ColumnWildcard?: #ColumnWildcard
	// The name of the Database that the Table resides in.
	DatabaseName: #NameString
	// The desired name of the Data Cells Filter.
	Name: #NameString
	// An object representing the Data Cells Filter's Row Filter. Either a Filter Expression or a Wildcard is required
	RowFilter?: #RowFilter
	// The Catalog Id of the Table on which to create a Data Cells Filter.
	TableCatalogId: #CatalogIdString
	// The name of the Table to create a Data Cells Filter for.
	TableName: #NameString
}

#ColumnWildcard: {
	// A list of column names to be excluded from the Data Cells Filter.
	ExcludedColumnNames?: #ColumnNames
}

#RowFilter: {
	// An empty object representing a row wildcard.
	AllRowsWildcard?: {...}
	// A PartiQL predicate.
	FilterExpression?: string
}
