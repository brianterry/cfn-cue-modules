package graphqlapi

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique AWS AppSync GraphQL API identifier.
	ApiId: string
	// The Amazon Resource Name (ARN) of the API key
	Arn: string & =~"^arn:.*"
	// The GraphQL endpoint ARN.
	GraphQLEndpointArn: string
	// The fully qualified domain name (FQDN) of the endpoint URL of your GraphQL API.
	GraphQLDns: string
	// The Endpoint URL of your GraphQL API.
	GraphQLUrl: string
	// The fully qualified domain name (FQDN) of the real-time endpoint URL of your GraphQL API.
	RealtimeDns: string
	// The GraphQL API real-time endpoint URL.
	RealtimeUrl: string
}
