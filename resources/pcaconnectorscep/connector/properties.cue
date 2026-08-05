package connector

import "strings"

#Properties: {
	CertificateAuthorityArn: string & =~"^arn:aws(-[a-z]+)*:acm-pca:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	MobileDeviceManagement?: #MobileDeviceManagement
	Tags?: #Tags
	VpcEndpointId?: string & strings.MinRunes(5) & strings.MaxRunes(200)
}

#ConnectorType: "GENERAL_PURPOSE" | "INTUNE"

#IntuneConfiguration: {
	AzureApplicationId: string & =~"^[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}$" & strings.MinRunes(15) & strings.MaxRunes(100)
	Domain: string & =~"^[a-zA-Z0-9._-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#MobileDeviceManagement: {
	Intune: #IntuneConfiguration
}

#OpenIdConfiguration: {
	Audience?: string
	Issuer?: string
	Subject?: string
}

#Tags: {...}

#Unit: {...}
