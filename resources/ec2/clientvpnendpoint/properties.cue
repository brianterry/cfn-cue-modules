package clientvpnendpoint

#Properties: {
	AuthenticationOptions: [...#ClientAuthenticationRequest]
	ClientCidrBlock?: string
	ClientConnectOptions?: #ClientConnectOptions
	ClientLoginBannerOptions?: #ClientLoginBannerOptions
	ClientRouteEnforcementOptions?: #ClientRouteEnforcementOptions
	ConnectionLogOptions: #ConnectionLogOptions
	Description?: string
	DisconnectOnSessionTimeout?: bool
	DnsServers?: [...string]
	EndpointIpAddressType?: string
	SecurityGroupIds?: [...string]
	SelfServicePortal?: string
	ServerCertificateArn: string
	SessionTimeoutHours?: int
	SplitTunnel?: bool
	TagSpecifications?: [...#TagSpecification]
	TrafficIpAddressType?: string
	TransitGatewayConfiguration?: #TransitGatewayConfiguration
	TransportProtocol?: string
	VpcId?: string
	VpnPort?: int
}

#CertificateAuthenticationRequest: {
	ClientRootCertificateChainArn: string
}

#ClientAuthenticationRequest: {
	ActiveDirectory?: #DirectoryServiceAuthenticationRequest
	FederatedAuthentication?: #FederatedAuthenticationRequest
	MutualAuthentication?: #CertificateAuthenticationRequest
	Type: string
}

#ClientConnectOptions: {
	Enabled: bool
	LambdaFunctionArn?: string
}

#ClientLoginBannerOptions: {
	BannerText?: string
	Enabled: bool
}

#ClientRouteEnforcementOptions: {
	Enforced?: bool
}

#ConnectionLogOptions: {
	CloudwatchLogGroup?: string
	CloudwatchLogStream?: string
	Enabled: bool
}

#DirectoryServiceAuthenticationRequest: {
	DirectoryId: string
}

#FederatedAuthenticationRequest: {
	SAMLProviderArn: string
	SelfServiceSAMLProviderArn?: string
}

#Tag: {
	Key: string
	Value: string
}

#TagSpecification: {
	ResourceType: string
	Tags: [...#Tag]
}

#TransitGatewayConfiguration: {
	AvailabilityZoneIds?: [...string]
	AvailabilityZones?: [...string]
	TransitGatewayId: string
}
