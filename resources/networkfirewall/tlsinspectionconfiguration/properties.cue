package tlsinspectionconfiguration

import "strings"

#Properties: {
	Description?: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(512)
	TLSInspectionConfiguration: #TLSInspectionConfiguration
	TLSInspectionConfigurationName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
}

#Address: {
	AddressDefinition: string & =~"^([a-fA-F\\d:\\.]+/\\d{1,3})$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#PortRange: {
	FromPort: #PortRangeBound
	ToPort: #PortRangeBound
}

#ServerCertificate: {
	ResourceArn?: #ResourceArn
}

#ServerCertificateConfiguration: {
	CertificateAuthorityArn?: #ResourceArn
	CheckCertificateRevocationStatus?: {
		RevokedStatusAction?: #RevokedStatusAction
		UnknownStatusAction?: #UnknownStatusAction
	}
	Scopes?: [...#ServerCertificateScope]
	ServerCertificates?: [...#ServerCertificate]
}

#ServerCertificateScope: {
	DestinationPorts?: [...#PortRange]
	Destinations?: [...#Address]
	Protocols?: [...#ProtocolNumber]
	SourcePorts?: [...#PortRange]
	Sources?: [...#Address]
}

#TLSInspectionConfiguration: {
	ServerCertificateConfigurations?: [...#ServerCertificateConfiguration]
}

#Tag: {
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}
