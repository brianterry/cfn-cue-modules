package preparedstatement

import "strings"

#Properties: {
	// The description of the prepared statement.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The query string for the prepared statement.
	QueryStatement: string & strings.MinRunes(1) & strings.MaxRunes(262144)
	// The name of the prepared statement.
	StatementName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the workgroup to which the prepared statement belongs.
	WorkGroup: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
