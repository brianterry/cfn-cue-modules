package connector

import "strings"

#Properties: {
	// Specifies the access role for the connector.
	AccessRole: string & =~"arn:.*role/.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Configuration for an AS2 connector.
	As2Config?: {
		AsyncMdnConfig?: #ConnectorAsyncMdnConfig
		BasicAuthSecretId?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
		Compression?: "ZLIB" | "DISABLED"
		EncryptionAlgorithm?: "AES128_CBC" | "AES192_CBC" | "AES256_CBC" | "NONE" | "DES_EDE3_CBC"
		LocalProfileId?: string & =~"^p-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
		MdnResponse?: "SYNC" | "ASYNC" | "NONE"
		MdnSigningAlgorithm?: "SHA256" | "SHA384" | "SHA512" | "SHA1" | "NONE" | "DEFAULT"
		MessageSubject?: string & =~"^[\\u0020-\\u007E\\t]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
		PartnerProfileId?: string & =~"^p-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
		PreserveContentType?: "ENABLED" | "DISABLED"
		SigningAlgorithm?: "SHA256" | "SHA384" | "SHA512" | "SHA1" | "NONE"
	}
	// Egress configuration for the connector.
	EgressConfig?: #ConnectorEgressConfig
	// Specifies the egress type for the connector.
	EgressType?: #ConnectorEgressType
	IpAddressType?: #IpAddressType
	// Specifies the logging role for the connector.
	LoggingRole?: string & =~"arn:.*role/.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Security policy for SFTP Connector
	SecurityPolicyName?: string & =~"TransferSFTPConnectorSecurityPolicy-[A-Za-z0-9-]+" & strings.MaxRunes(50)
	// Configuration for an SFTP connector.
	SftpConfig?: {
		MaxConcurrentConnections?: int & >=1 & <=5
		TrustedHostKeys?: [...#SftpConnectorTrustedHostKey]
		UserSecretId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	}
	// Key-value pairs that can be used to group and search for connectors. Tags are metadata attached to connectors for any purpose.
	Tags?: [...#Tag]
	// URL for Connector
	Url?: string & strings.MaxRunes(255)
}

#ConnectorAsyncMdnConfig: {
	ServerIds: [...#ServerId]
	// URL of the server to receive the MDN response on
	Url: string
}

#ConnectorEgressConfig: {
	VpcLattice: #ConnectorVpcLatticeEgressConfig
}

#ConnectorVpcLatticeEgressConfig: {
	// Port to connect to on the target VPC Lattice resource
	PortNumber?: int & >=1 & <=65535
	// ARN of the VPC Lattice resource configuration
	ResourceConfigurationArn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Tag: {
	// The name assigned to the tag that you create.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Contains one or more values that you assigned to the key name you create.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
