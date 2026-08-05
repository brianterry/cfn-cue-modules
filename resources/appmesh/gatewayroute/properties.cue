package gatewayroute

#Properties: {
	GatewayRouteName?: string
	MeshName: string
	MeshOwner?: string
	Spec: #GatewayRouteSpec
	Tags?: [...#Tag]
	VirtualGatewayName: string
}

#GatewayRouteHostnameMatch: {
	Exact?: string
	Suffix?: string
}

#GatewayRouteHostnameRewrite: {
	DefaultTargetHostname?: string
}

#GatewayRouteMetadataMatch: {
	Exact?: string
	Prefix?: string
	Range?: #GatewayRouteRangeMatch
	Regex?: string
	Suffix?: string
}

#GatewayRouteRangeMatch: {
	End: int
	Start: int
}

#GatewayRouteSpec: {
	GrpcRoute?: #GrpcGatewayRoute
	Http2Route?: #HttpGatewayRoute
	HttpRoute?: #HttpGatewayRoute
	Priority?: int
}

#GatewayRouteTarget: {
	Port?: int
	VirtualService: #GatewayRouteVirtualService
}

#GatewayRouteVirtualService: {
	VirtualServiceName: string
}

#GrpcGatewayRoute: {
	Action: #GrpcGatewayRouteAction
	Match: #GrpcGatewayRouteMatch
}

#GrpcGatewayRouteAction: {
	Rewrite?: #GrpcGatewayRouteRewrite
	Target: #GatewayRouteTarget
}

#GrpcGatewayRouteMatch: {
	Hostname?: #GatewayRouteHostnameMatch
	Metadata?: [...#GrpcGatewayRouteMetadata]
	Port?: int
	ServiceName?: string
}

#GrpcGatewayRouteMetadata: {
	Invert?: bool
	Match?: #GatewayRouteMetadataMatch
	Name: string
}

#GrpcGatewayRouteRewrite: {
	Hostname?: #GatewayRouteHostnameRewrite
}

#HttpGatewayRoute: {
	Action: #HttpGatewayRouteAction
	Match: #HttpGatewayRouteMatch
}

#HttpGatewayRouteAction: {
	Rewrite?: #HttpGatewayRouteRewrite
	Target: #GatewayRouteTarget
}

#HttpGatewayRouteHeader: {
	Invert?: bool
	Match?: #HttpGatewayRouteHeaderMatch
	Name: string
}

#HttpGatewayRouteHeaderMatch: {
	Exact?: string
	Prefix?: string
	Range?: #GatewayRouteRangeMatch
	Regex?: string
	Suffix?: string
}

#HttpGatewayRouteMatch: {
	Headers?: [...#HttpGatewayRouteHeader]
	Hostname?: #GatewayRouteHostnameMatch
	Method?: string
	Path?: #HttpPathMatch
	Port?: int
	Prefix?: string
	QueryParameters?: [...#QueryParameter]
}

#HttpGatewayRoutePathRewrite: {
	Exact?: string
}

#HttpGatewayRoutePrefixRewrite: {
	DefaultPrefix?: string
	Value?: string
}

#HttpGatewayRouteRewrite: {
	Hostname?: #GatewayRouteHostnameRewrite
	Path?: #HttpGatewayRoutePathRewrite
	Prefix?: #HttpGatewayRoutePrefixRewrite
}

#HttpPathMatch: {
	Exact?: string
	Regex?: string
}

#HttpQueryParameterMatch: {
	Exact?: string
}

#QueryParameter: {
	Match?: #HttpQueryParameterMatch
	Name: string
}

#Tag: {
	Key: string
	Value: string
}
