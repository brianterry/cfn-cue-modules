package virtualnode

#Properties: {
	MeshName: string
	MeshOwner?: string
	Spec: #VirtualNodeSpec
	Tags?: [...#Tag]
	VirtualNodeName?: string
}

#AccessLog: {
	File?: #FileAccessLog
}

#AwsCloudMapInstanceAttribute: {
	Key: string
	Value: string
}

#AwsCloudMapServiceDiscovery: {
	Attributes?: [...#AwsCloudMapInstanceAttribute]
	IpPreference?: string
	NamespaceName: string
	ServiceName: string
}

#Backend: {
	VirtualService?: #VirtualServiceBackend
}

#BackendDefaults: {
	ClientPolicy?: #ClientPolicy
}

#ClientPolicy: {
	TLS?: #ClientPolicyTls
}

#ClientPolicyTls: {
	Certificate?: #ClientTlsCertificate
	Enforce?: bool
	Ports?: [...int]
	Validation: #TlsValidationContext
}

#ClientTlsCertificate: {
	File?: #ListenerTlsFileCertificate
	SDS?: #ListenerTlsSdsCertificate
}

#DnsServiceDiscovery: {
	Hostname: string
	IpPreference?: string
	ResponseType?: string
}

#Duration: {
	Unit: string
	Value: int
}

#FileAccessLog: {
	Format?: #LoggingFormat
	Path: string
}

#GrpcTimeout: {
	Idle?: #Duration
	PerRequest?: #Duration
}

#HealthCheck: {
	HealthyThreshold: int
	IntervalMillis: int
	Path?: string
	Port?: int
	Protocol: string
	TimeoutMillis: int
	UnhealthyThreshold: int
}

#HttpTimeout: {
	Idle?: #Duration
	PerRequest?: #Duration
}

#JsonFormatRef: {
	Key: string
	Value: string
}

#Listener: {
	ConnectionPool?: #VirtualNodeConnectionPool
	HealthCheck?: #HealthCheck
	OutlierDetection?: #OutlierDetection
	PortMapping: #PortMapping
	TLS?: #ListenerTls
	Timeout?: #ListenerTimeout
}

#ListenerTimeout: {
	GRPC?: #GrpcTimeout
	HTTP?: #HttpTimeout
	HTTP2?: #HttpTimeout
	TCP?: #TcpTimeout
}

#ListenerTls: {
	Certificate: #ListenerTlsCertificate
	Mode: string
	Validation?: #ListenerTlsValidationContext
}

#ListenerTlsAcmCertificate: {
	CertificateArn: string
}

#ListenerTlsCertificate: {
	ACM?: #ListenerTlsAcmCertificate
	File?: #ListenerTlsFileCertificate
	SDS?: #ListenerTlsSdsCertificate
}

#ListenerTlsFileCertificate: {
	CertificateChain: string
	PrivateKey: string
}

#ListenerTlsSdsCertificate: {
	SecretName: string
}

#ListenerTlsValidationContext: {
	SubjectAlternativeNames?: #SubjectAlternativeNames
	Trust: #ListenerTlsValidationContextTrust
}

#ListenerTlsValidationContextTrust: {
	File?: #TlsValidationContextFileTrust
	SDS?: #TlsValidationContextSdsTrust
}

#Logging: {
	AccessLog?: #AccessLog
}

#LoggingFormat: {
	Json?: [...#JsonFormatRef]
	Text?: string
}

#OutlierDetection: {
	BaseEjectionDuration: #Duration
	Interval: #Duration
	MaxEjectionPercent: int
	MaxServerErrors: int
}

#PortMapping: {
	Port: int
	Protocol: string
}

#ServiceDiscovery: {
	AWSCloudMap?: #AwsCloudMapServiceDiscovery
	DNS?: #DnsServiceDiscovery
}

#SubjectAlternativeNameMatchers: {
	Exact?: [...string]
}

#SubjectAlternativeNames: {
	Match: #SubjectAlternativeNameMatchers
}

#Tag: {
	Key: string
	Value: string
}

#TcpTimeout: {
	Idle?: #Duration
}

#TlsValidationContext: {
	SubjectAlternativeNames?: #SubjectAlternativeNames
	Trust: #TlsValidationContextTrust
}

#TlsValidationContextAcmTrust: {
	CertificateAuthorityArns: [...string]
}

#TlsValidationContextFileTrust: {
	CertificateChain: string
}

#TlsValidationContextSdsTrust: {
	SecretName: string
}

#TlsValidationContextTrust: {
	ACM?: #TlsValidationContextAcmTrust
	File?: #TlsValidationContextFileTrust
	SDS?: #TlsValidationContextSdsTrust
}

#VirtualNodeConnectionPool: {
	GRPC?: #VirtualNodeGrpcConnectionPool
	HTTP?: #VirtualNodeHttpConnectionPool
	HTTP2?: #VirtualNodeHttp2ConnectionPool
	TCP?: #VirtualNodeTcpConnectionPool
}

#VirtualNodeGrpcConnectionPool: {
	MaxRequests: int
}

#VirtualNodeHttp2ConnectionPool: {
	MaxRequests: int
}

#VirtualNodeHttpConnectionPool: {
	MaxConnections: int
	MaxPendingRequests?: int
}

#VirtualNodeSpec: {
	BackendDefaults?: #BackendDefaults
	Backends?: [...#Backend]
	Listeners?: [...#Listener]
	Logging?: #Logging
	ServiceDiscovery?: #ServiceDiscovery
}

#VirtualNodeTcpConnectionPool: {
	MaxConnections: int
}

#VirtualServiceBackend: {
	ClientPolicy?: #ClientPolicy
	VirtualServiceName: string
}
