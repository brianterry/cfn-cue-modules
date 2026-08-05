package apidestination

import "strings"

#Properties: {
	// The arn of the connection.
	ConnectionArn: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection/[\\.\\-_A-Za-z0-9]+/[\\-A-Za-z0-9]+$"
	Description?: string & strings.MaxRunes(512)
	HttpMethod: "GET" | "HEAD" | "POST" | "OPTIONS" | "PUT" | "DELETE" | "PATCH"
	// Url endpoint to invoke.
	InvocationEndpoint: string & =~"^((%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@\\x26=+$,A-Za-z0-9])+)([).!';/?:,])?$"
	InvocationRateLimitPerSecond?: int & >=1
	// Name of the apiDestination.
	Name?: string & =~"[\\.\\-_A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(64)
}
