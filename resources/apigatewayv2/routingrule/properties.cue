package routingrule

#Properties: {
	// The resulting action based on matching a routing rules condition. Only InvokeApi is supported.
	Actions: [...#Action]
	// The conditions of the routing rule.
	Conditions: [...#Condition]
	// The ARN of the domain name.
	DomainNameArn: string
	// The order in which API Gateway evaluates a rule. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Priority values 1-1,000,000 are supported.
	Priority: int
}

#Action: {
	// Represents an InvokeApi action.
	InvokeApi: #ActionInvokeApi
}

#ActionInvokeApi: {
	// The API identifier of the target API.
	ApiId: string
	// The name of the target stage.
	Stage: string
	// The strip base path setting. When true, API Gateway strips the incoming matched base path when forwarding the request to the target API.
	StripBasePath?: bool
}

#Condition: {
	// The base path to be matched.
	MatchBasePaths?: #MatchBasePaths
	// The headers to be matched.
	MatchHeaders?: #MatchHeaders
}

#MatchBasePaths: {
	// The string of the case sensitive base path to be matched.
	AnyOf: [...string]
}

#MatchHeaderValue: {
	// The case insensitive header name to be matched. The header name must be less than 40 characters and the only allowed characters are ``a-z``, ``A-Z``, ``0-9``, and the following special characters: ``*?-!#$%&'.^_`|~.``.
	Header: string
	// The case sensitive header glob value to be matched against entire header value. The header glob value must be less than 128 characters and the only allowed characters are ``a-z``, ``A-Z``, ``0-9``, and the following special characters: ``*?-!#$%&'.^_`|~``. Wildcard matching is supported for header glob values but must be for ``*prefix-match``, ``suffix-match*``, or ``*infix*-match``.
	ValueGlob: string
}

#MatchHeaders: {
	// The header name and header value glob to be matched. The matchHeaders condition is matched if any of the header name and header value globs are matched.
	AnyOf: [...#MatchHeaderValue]
}
