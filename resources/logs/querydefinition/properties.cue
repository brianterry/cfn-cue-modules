package querydefinition

import "strings"

#Properties: {
	// Optionally define specific log groups as part of your query definition
	LogGroupNames?: [...#LogGroup]
	// A name for the saved query definition
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Use this parameter to include specific query parameters as part of your query definition. Query parameters are supported only for Logs Insights QL queries. Query parameters allow you to use placeholder variables in your query string that are substituted with values at execution time. Use the {{parameterName}} syntax in your query string to reference a parameter.
	Parameters?: [...#QueryParameter]
	// Query language of the query string. Possible values are CWLI, SQL, PPL, with CWLI being the default.
	QueryLanguage?: "CWLI" | "SQL" | "PPL"
	// The query string to use for this definition
	QueryString: string & strings.MinRunes(1) & strings.MaxRunes(10000)
}

#QueryParameter: {
	// The default value to use for this query parameter if no value is supplied at execution time.
	DefaultValue?: string & strings.MaxRunes(1024)
	// A description of the query parameter that explains its purpose or expected values.
	Description?: string & strings.MaxRunes(512)
	// The name of the query parameter. A query parameter name must start with a letter or underscore, and contain only letters, digits, and underscores.
	Name: string & =~"^[a-zA-Z_][a-zA-Z0-9_]*$" & strings.MaxRunes(128)
}
