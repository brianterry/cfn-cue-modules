package routeresponse

#Properties: {
	// The API identifier.
	ApiId: string
	// The model selection expression for the route response. Supported only for WebSocket APIs.
	ModelSelectionExpression?: string
	// The response models for the route response.
	ResponseModels?: {...}
	// The route response parameters.
	ResponseParameters?: #RouteParameters
	// The route ID.
	RouteId: string
	// The route response key.
	RouteResponseKey: string
}

#ParameterConstraints: {
	// Specifies whether the parameter is required.
	Required: bool
}

#RouteParameters: string
