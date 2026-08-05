package respondergateway

import "strings"

#Properties: {
	AcmCertificateArn?: #AcmCertificateArn
	Description?: #Description
	DomainName?: #DomainName
	GatewayType?: #GatewayType
	ListenerConfig?: #ListenerConfig
	ManagedEndpointConfiguration?: #ManagedEndpointConfiguration
	Port: #Port
	Protocol: #Protocol
	SecurityGroupIds: #SecurityGroupIds
	SubnetIds: #SubnetIds
	Tags?: #Tags
	TrustStoreConfiguration?: #TrustStoreConfiguration
	VpcId: #VpcId
}

#AutoScalingGroupsConfiguration: {
	AutoScalingGroupNameList: #AutoScalingGroupNameList
	HealthCheckConfig?: #HealthCheckConfig
	RoleArn: string
}

#EksEndpointsConfiguration: {
	ClusterApiServerCaCertificateChain: string & strings.MinRunes(1) & strings.MaxRunes(2097152)
	ClusterApiServerEndpointUri: string & =~"^(https|http)://(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)(?:\\.(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?))+$" & strings.MinRunes(0) & strings.MaxRunes(255)
	ClusterName: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	EndpointsResourceName: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	EndpointsResourceNamespace: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	RoleArn: string
}

#HealthCheckConfig: {
	HealthyThresholdCount?: int & >=2 & <=10
	IntervalSeconds?: int & >=5 & <=60
	Path: string & =~"^/.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Port: int & >=80 & <=65535
	Protocol?: #Protocol
	StatusCodeMatcher?: string & =~"^[0-9,\\-]+$" & strings.MinRunes(3) & strings.MaxRunes(2000)
	TimeoutMs?: int & >=100 & <=5000
	UnhealthyThresholdCount?: int & >=2 & <=10
}

#ListenerConfig: {
	Protocols: [...#Protocol]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TrustStoreConfiguration: {
	CertificateAuthorityCertificates: #CertificateAuthorityCertificates
}
