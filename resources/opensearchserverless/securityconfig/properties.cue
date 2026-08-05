package securityconfig

import "strings"

#Properties: {
	// Security config description
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	IamFederationOptions?: #IamFederationConfigOptions
	// The friendly name of the security config
	Name?: string & =~"^[a-z][a-z0-9-]{2,31}$" & strings.MinRunes(3) & strings.MaxRunes(32)
	SamlOptions?: #SamlConfigOptions
	Type?: #SecurityConfigType
}

#IamFederationConfigOptions: {
	// Group attribute for this IAM federation integration
	GroupAttribute?: string
	// User attribute for this IAM federation integration
	UserAttribute?: string
}

#IamIdentityCenterConfigOptions: {
	ApplicationArn?: #IamIdentityCenterApplicationArn
	// The description of the IAM Identity Center application used to integrate with OpenSearch Serverless
	ApplicationDescription?: string
	// The name of the IAM Identity Center application used to integrate with OpenSearch Serverless
	ApplicationName?: string
	GroupAttribute?: #IamIdentityCenterGroupAttribute
	InstanceArn: #IamIdentityCenterInstanceArn
	UserAttribute?: #IamIdentityCenterUserAttribute
}

#SamlConfigOptions: {
	// Group attribute for this saml integration
	GroupAttribute?: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The XML saml provider metadata document that you want to use
	Metadata: string & strings.MinRunes(1) & strings.MaxRunes(51200)
	// Custom entity id attribute to override default entity id for this saml integration
	OpenSearchServerlessEntityId?: string & =~"^aws:opensearch:[0-9]{12}:*" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Defines the session timeout in minutes
	SessionTimeout?: int
	// Custom attribute for this saml integration
	UserAttribute?: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
