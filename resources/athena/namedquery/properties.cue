package namedquery

import "strings"

#Properties: {
	// The database to which the query belongs.
	Database: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The query description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The query name.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The contents of the query with all query statements.
	QueryString: string & strings.MinRunes(1) & strings.MaxRunes(262144)
	// The name of the workgroup that contains the named query.
	WorkGroup?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
