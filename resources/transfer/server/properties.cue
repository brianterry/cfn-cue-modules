package server

import "strings"

#Properties: {
	Certificate?: string & strings.MinRunes(0) & strings.MaxRunes(1600)
	Domain?: #Domain
	EndpointDetails?: #EndpointDetails
	EndpointType?: #EndpointType
	IdentityProviderDetails?: #IdentityProviderDetails
	IdentityProviderType?: #IdentityProviderType
	IpAddressType?: #IpAddressType
	LoggingRole?: string & =~"^(|arn:.*role/\\S+)$" & strings.MinRunes(0) & strings.MaxRunes(2048)
	PostAuthenticationLoginBanner?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	PreAuthenticationLoginBanner?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	ProtocolDetails?: #ProtocolDetails
	Protocols?: [...#Protocol]
	S3StorageOptions?: #S3StorageOptions
	SecurityPolicyName?: string & =~"^TransferSecurityPolicy-.+$" & strings.MinRunes(0) & strings.MaxRunes(100)
	StructuredLogDestinations?: [...string & =~"^arn:\\S+$" & strings.MinRunes(20) & strings.MaxRunes(1600)]
	Tags?: [...#Tag]
	WorkflowDetails?: #WorkflowDetails
}

#EndpointDetails: {
	AddressAllocationIds?: [...string]
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-f]{8,17}$" & strings.MinRunes(11) & strings.MaxRunes(20)]
	SubnetIds?: [...string]
	VpcEndpointId?: string & =~"^vpce-[0-9a-f]{17}$" & strings.MinRunes(22) & strings.MaxRunes(22)
	VpcId?: string
}

#IdentityProviderDetails: {
	DirectoryId?: string & =~"^d-[0-9a-f]{10}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	Function?: string & =~"^arn:[a-z-]+:lambda:.*$" & strings.MinRunes(1) & strings.MaxRunes(170)
	InvocationRole?: string & =~"^arn:.*role/\\S+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	SftpAuthenticationMethods?: #SftpAuthenticationMethods
	Url?: string & strings.MinRunes(0) & strings.MaxRunes(255)
}

#ProtocolDetails: {
	As2Transports?: [...#As2Transport]
	PassiveIp?: string & strings.MinRunes(0) & strings.MaxRunes(15)
	SetStatOption?: #SetStatOption
	TlsSessionResumptionMode?: #TlsSessionResumptionMode
}

#S3StorageOptions: {
	DirectoryListingOptimization?: #DirectoryListingOptimization
}

#Tag: {
	Key: string & strings.MinRunes(0) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkflowDetail: {
	ExecutionRole: string & =~"^arn:.*role/\\S+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	WorkflowId: string & =~"^w-([a-z0-9]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
}

#WorkflowDetails: {
	OnPartialUpload?: [...#WorkflowDetail]
	OnUpload?: [...#WorkflowDetail]
}
