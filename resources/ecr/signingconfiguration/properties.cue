package signingconfiguration

import "strings"

#Properties: {
	// Array of signing rules that define which repositories should be signed and with which signing profiles.
	Rules: [...#Rule]
}

#Filter: string & =~"^(?:[a-z0-9*]+(?:[._-][a-z0-9*]+)*/)*[a-z0-9*]+(?:[._-][a-z0-9*]+)*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#FilterType: "WILDCARD_MATCH"

#RepositoryFilter: {
	Filter: #Filter
	FilterType: #FilterType
}

#Rule: {
	// Optional array of repository filters. If omitted, the rule matches all repositories. If provided, must contain at least one filter. Empty arrays are not allowed.
	RepositoryFilters?: [...#RepositoryFilter]
	// AWS Signer signing profile ARN to use for matched repositories.
	SigningProfileArn: string & =~"^arn:aws(-[a-z]+)*:signer:[a-z0-9-]+:[0-9]{12}:\\/signing-profiles\\/[a-zA-Z0-9_]{2,}$" & strings.MaxRunes(200)
}
