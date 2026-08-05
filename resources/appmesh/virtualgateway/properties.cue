package virtualgateway

#Properties: {
	MeshName: string
	MeshOwner?: string
	Spec: #VirtualGatewaySpec
	Tags?: [...#Tag]
	VirtualGatewayName?: string
}

#JsonFormatRef: {
	Key: string
	Value: string
}

#LoggingFormat: {
	Json?: [...#JsonFormatRef]
	Text?: string
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

#VirtualGatewayAccessLog: {
	File?: #VirtualGatewayFileAccessLog
}

#VirtualGatewayBackendDefaults: {
	ClientPolicy?: #VirtualGatewayClientPolicy
}

#VirtualGatewayClientPolicy: {
	TLS?: #VirtualGatewayClientPolicyTls
}

#VirtualGatewayClientPolicyTls: {
	Certificate?: #VirtualGatewayClientTlsCertificate
	Enforce?: bool
	Ports?: [...int]
	Validation: #VirtualGatewayTlsValidationContext
}

#VirtualGatewayClientTlsCertificate: {
	File?: #VirtualGatewayListenerTlsFileCertificate
	SDS?: #VirtualGatewayListenerTlsSdsCertificate
}

#VirtualGatewayConnectionPool: {
	GRPC?: #VirtualGatewayGrpcConnectionPool
	HTTP?: #VirtualGatewayHttpConnectionPool
	HTTP2?: #VirtualGatewayHttp2ConnectionPool
}

#VirtualGatewayFileAccessLog: {
	Format?: #LoggingFormat
	Path: string
}

#VirtualGatewayGrpcConnectionPool: {
	MaxRequests: int
}

#VirtualGatewayHealthCheckPolicy: {
	HealthyThreshold: int
	IntervalMillis: int
	Path?: string
	Port?: int
	Protocol: string
	TimeoutMillis: int
	UnhealthyThreshold: int
}

#VirtualGatewayHttp2ConnectionPool: {
	MaxRequests: int
}

#VirtualGatewayHttpConnectionPool: {
	MaxConnections: int
	MaxPendingRequests?: int
}

#VirtualGatewayListener: {
	ConnectionPool?: #VirtualGatewayConnectionPool
	HealthCheck?: #VirtualGatewayHealthCheckPolicy
	PortMapping: #VirtualGatewayPortMapping
	TLS?: #VirtualGatewayListenerTls
}

#VirtualGatewayListenerTls: {
	Certificate: #VirtualGatewayListenerTlsCertificate
	Mode: string
	Validation?: #VirtualGatewayListenerTlsValidationContext
}

#VirtualGatewayListenerTlsAcmCertificate: {
	CertificateArn: string
}

#VirtualGatewayListenerTlsCertificate: {
	ACM?: #VirtualGatewayListenerTlsAcmCertificate
	File?: #VirtualGatewayListenerTlsFileCertificate
	SDS?: #VirtualGatewayListenerTlsSdsCertificate
}

#VirtualGatewayListenerTlsFileCertificate: {
	CertificateChain: string
	PrivateKey: string
}

#VirtualGatewayListenerTlsSdsCertificate: {
	SecretName: string
}

#VirtualGatewayListenerTlsValidationContext: {
	SubjectAlternativeNames?: #SubjectAlternativeNames
	Trust: #VirtualGatewayListenerTlsValidationContextTrust
}

#VirtualGatewayListenerTlsValidationContextTrust: {
	File?: #VirtualGatewayTlsValidationContextFileTrust
	SDS?: #VirtualGatewayTlsValidationContextSdsTrust
}

#VirtualGatewayLogging: {
	AccessLog?: #VirtualGatewayAccessLog
}

#VirtualGatewayPortMapping: {
	Port: int
	Protocol: string
}

#VirtualGatewaySpec: {
	BackendDefaults?: #VirtualGatewayBackendDefaults
	Listeners: [...#VirtualGatewayListener]
	Logging?: #VirtualGatewayLogging
}

#VirtualGatewayTlsValidationContext: {
	SubjectAlternativeNames?: #SubjectAlternativeNames
	Trust: #VirtualGatewayTlsValidationContextTrust
}

#VirtualGatewayTlsValidationContextAcmTrust: {
	CertificateAuthorityArns: [...string]
}

#VirtualGatewayTlsValidationContextFileTrust: {
	CertificateChain: string
}

#VirtualGatewayTlsValidationContextSdsTrust: {
	SecretName: string
}

#VirtualGatewayTlsValidationContextTrust: {
	ACM?: #VirtualGatewayTlsValidationContextAcmTrust
	File?: #VirtualGatewayTlsValidationContextFileTrust
	SDS?: #VirtualGatewayTlsValidationContextSdsTrust
}
