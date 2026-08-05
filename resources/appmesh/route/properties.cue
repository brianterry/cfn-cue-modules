package route

#Properties: {
	MeshName: string
	MeshOwner?: string
	RouteName?: string
	Spec: #RouteSpec
	Tags?: [...#Tag]
	VirtualRouterName: string
}

#Duration: {
	Unit: string
	Value: int
}

#GrpcRetryPolicy: {
	GrpcRetryEvents?: [...string]
	HttpRetryEvents?: [...string]
	MaxRetries: int
	PerRetryTimeout: #Duration
	TcpRetryEvents?: [...string]
}

#GrpcRoute: {
	Action: #GrpcRouteAction
	Match: #GrpcRouteMatch
	RetryPolicy?: #GrpcRetryPolicy
	Timeout?: #GrpcTimeout
}

#GrpcRouteAction: {
	WeightedTargets: [...#WeightedTarget]
}

#GrpcRouteMatch: {
	Metadata?: [...#GrpcRouteMetadata]
	MethodName?: string
	Port?: int
	ServiceName?: string
}

#GrpcRouteMetadata: {
	Invert?: bool
	Match?: #GrpcRouteMetadataMatchMethod
	Name: string
}

#GrpcRouteMetadataMatchMethod: {
	Exact?: string
	Prefix?: string
	Range?: #MatchRange
	Regex?: string
	Suffix?: string
}

#GrpcTimeout: {
	Idle?: #Duration
	PerRequest?: #Duration
}

#HeaderMatchMethod: {
	Exact?: string
	Prefix?: string
	Range?: #MatchRange
	Regex?: string
	Suffix?: string
}

#HttpPathMatch: {
	Exact?: string
	Regex?: string
}

#HttpQueryParameterMatch: {
	Exact?: string
}

#HttpRetryPolicy: {
	HttpRetryEvents?: [...string]
	MaxRetries: int
	PerRetryTimeout: #Duration
	TcpRetryEvents?: [...string]
}

#HttpRoute: {
	Action: #HttpRouteAction
	Match: #HttpRouteMatch
	RetryPolicy?: #HttpRetryPolicy
	Timeout?: #HttpTimeout
}

#HttpRouteAction: {
	WeightedTargets: [...#WeightedTarget]
}

#HttpRouteHeader: {
	Invert?: bool
	Match?: #HeaderMatchMethod
	Name: string
}

#HttpRouteMatch: {
	Headers?: [...#HttpRouteHeader]
	Method?: string
	Path?: #HttpPathMatch
	Port?: int
	Prefix?: string
	QueryParameters?: [...#QueryParameter]
	Scheme?: string
}

#HttpTimeout: {
	Idle?: #Duration
	PerRequest?: #Duration
}

#MatchRange: {
	End: int
	Start: int
}

#QueryParameter: {
	Match?: #HttpQueryParameterMatch
	Name: string
}

#RouteSpec: {
	GrpcRoute?: #GrpcRoute
	Http2Route?: #HttpRoute
	HttpRoute?: #HttpRoute
	Priority?: int
	TcpRoute?: #TcpRoute
}

#Tag: {
	Key: string
	Value: string
}

#TcpRoute: {
	Action: #TcpRouteAction
	Match?: #TcpRouteMatch
	Timeout?: #TcpTimeout
}

#TcpRouteAction: {
	WeightedTargets: [...#WeightedTarget]
}

#TcpRouteMatch: {
	Port?: int
}

#TcpTimeout: {
	Idle?: #Duration
}

#WeightedTarget: {
	Port?: int
	VirtualNode: string
	Weight: int
}
