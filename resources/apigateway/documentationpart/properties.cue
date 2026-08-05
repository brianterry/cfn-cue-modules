package documentationpart

#Properties: {
	Location: #Location
	Properties: string
	RestApiId: string
}

#Location: {
	Method?: string
	Name?: string
	Path?: string
	StatusCode?: string
	Type?: "API" | "AUTHORIZER" | "MODEL" | "RESOURCE" | "METHOD" | "PATH_PARAMETER" | "QUERY_PARAMETER" | "REQUEST_HEADER" | "REQUEST_BODY" | "RESPONSE" | "RESPONSE_HEADER" | "RESPONSE_BODY"
}
