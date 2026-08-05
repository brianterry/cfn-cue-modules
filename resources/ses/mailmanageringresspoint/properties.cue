package mailmanageringresspoint

import "strings"

#Properties: {
	IngressPointConfiguration?: #IngressPointConfiguration
	IngressPointName?: string & =~"^[A-Za-z0-9_\\-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	NetworkConfiguration?: #NetworkConfiguration
	RuleSetId: string & strings.MinRunes(1) & strings.MaxRunes(100)
	StatusToUpdate?: #IngressPointStatusToUpdate
	Tags?: [...#Tag]
	TlsPolicy?: #TlsPolicy
	TrafficPolicyId: string & strings.MinRunes(1) & strings.MaxRunes(100)
	Type: #IngressPointType
}

#IngressPointConfiguration: {
	SmtpPassword: string & =~"^[A-Za-z0-9!@#$%^&*()_+\\-=\\[\\]{}|.,?]+$" & strings.MinRunes(8) & strings.MaxRunes(64)
} | {
	SecretArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=,.@-]+$"
} | {
	TlsAuthConfiguration: #TlsAuthConfiguration
}

#IngressPointStatus: "PROVISIONING" | "DEPROVISIONING" | "UPDATING" | "ACTIVE" | "CLOSED" | "FAILED"

#IngressPointStatusToUpdate: "ACTIVE" | "CLOSED"

#IngressPointType: "OPEN" | "AUTH" | "MTLS"

#IpType: "IPV4" | "DUAL_STACK"

#NetworkConfiguration: {
	PublicNetworkConfiguration: #PublicNetworkConfiguration
} | {
	PrivateNetworkConfiguration: #PrivateNetworkConfiguration
}

#PrivateNetworkConfiguration: {
	VpcEndpointId: string & =~"^vpce-[a-zA-Z0-9]{17}$"
}

#PublicNetworkConfiguration: {
	IpType: string
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TlsAuthConfiguration: {
	TrustStore: #TrustStore
}

#TlsPolicy: "REQUIRED" | "OPTIONAL" | "FIPS"

#TrustStore: {
	CAContent: string & =~"^[\\P{C}\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(500000)
	CrlContent?: string & =~"^[\\P{C}\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(500000)
	KmsKeyArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc):kms:[a-z0-9-]+:\\d{12}:(key|alias)/[a-zA-Z0-9/_-]+$"
}
