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

#AcmCertificateArn: string & =~"arn:(aws|aws-cn|aws-us-gov):acm:([a-z0-9-]+):[0-9]{12}:certificate/.{1,2048}"

#ActiveLinksCount: int

#Arn: string & =~"^arn:aws:rtbfabric:[a-zA-Z0-9_-]+:[0-9]{12}:gateway/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)

#AutoScalingGroupNameList: [...string]

#AutoScalingGroupsConfiguration: {
	AutoScalingGroupNameList: #AutoScalingGroupNameList
	HealthCheckConfig?: #HealthCheckConfig
	RoleArn: string
}

#Base64EncodedCertificateChain: string & strings.MinRunes(1) & strings.MaxRunes(2097152)

#CertificateAssociationStatus: "PENDING_ASSOCIATION" | "ASSOCIATED" | "PENDING_DISASSOCIATION" | "DISASSOCIATED" | "EXPIRED" | "FAILED"

#CertificateAuthorityCertificates: [...#Base64EncodedCertificateChain]

#CreatedTimestamp: string

#Description: string & =~"^[A-Za-z0-9 ]+$"

#DomainName: string & =~"^(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)(?:\\.(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?))+$"

#EksEndpointsConfiguration: {
	ClusterApiServerCaCertificateChain: string & strings.MinRunes(1) & strings.MaxRunes(2097152)
	ClusterApiServerEndpointUri: string & =~"^(https|http)://(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)(?:\\.(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?))+$" & strings.MinRunes(0) & strings.MaxRunes(255)
	ClusterName: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	EndpointsResourceName: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	EndpointsResourceNamespace: string & =~"^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"
	RoleArn: string
}

#ExternalInboundEndpoint: #DomainName

#GatewayId: string & =~"^(rtbapp-[a-z0-9-]{1,25}|rtb-gw-[a-z0-9-]{1,25})$"

#GatewayType: "EXTERNAL" | "INTERNAL"

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

#InboundLinksCount: int

#ListenerConfig: {
	Protocols: [...#Protocol]
}

#ManagedEndpointConfiguration: {
	AutoScalingGroupsConfiguration: #AutoScalingGroupsConfiguration
} | {
	EksEndpointsConfiguration: #EksEndpointsConfiguration
}

#Port: int & >=1 & <=65535

#Protocol: "HTTP" | "HTTPS"

#ResponderGatewayStatus: "PENDING_CREATION" | "ACTIVE" | "PENDING_DELETION" | "DELETED" | "ERROR" | "PENDING_UPDATE" | "ISOLATED" | "PENDING_ISOLATION" | "PENDING_RESTORATION"

#SecurityGroupIds: [...string | string]

#SubnetIds: [...string]

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#TotalLinksCount: int

#TrustStoreConfiguration: {
	CertificateAuthorityCertificates: #CertificateAuthorityCertificates
}

#UpdatedTimestamp: string

#VpcId: string & strings.MinRunes(5) & strings.MaxRunes(50)
