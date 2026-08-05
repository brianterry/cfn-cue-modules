package linkroutingrule

import "strings"

#Properties: {
	Conditions: #RuleCondition
	GatewayId: #GatewayId
	LinkId: #LinkId
	Priority: #RulePriority
	Tags?: #Tags
}

#QueryStringKeyValuePair: {
	// Query string key — RFC 3986 unreserved characters.
	Key: string & =~"^[A-Za-z0-9._~-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Query string value — RFC 3986 unreserved characters.
	Value: string & =~"^[A-Za-z0-9._~-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#RuleCondition: {
	// Exact host match — RFC 3986 unreserved characters. Mutually exclusive with HostHeaderWildcard.
	HostHeader?: string & =~"^[A-Za-z0-9._~-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Wildcard host pattern (e.g., *.example.com) — RFC 3986 unreserved characters plus *. Mutually exclusive with HostHeader.
	HostHeaderWildcard?: string & =~"^[A-Za-z0-9._~*-]+$" & strings.MinRunes(3) & strings.MaxRunes(255)
	// Exact path match — must start with /. Mutually exclusive with PathPrefix.
	PathExact?: string & =~"^/[A-Za-z0-9._~/-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Path prefix matching — strict starts-with, must start with /. Mutually exclusive with PathExact.
	PathPrefix?: string & =~"^/[A-Za-z0-9._~/-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Query string key=value pair match (single pair).
	QueryStringEquals?: #QueryStringKeyValuePair
	// Query string key presence check (any value accepted).
	QueryStringExists?: string & =~"^[A-Za-z0-9._~-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
