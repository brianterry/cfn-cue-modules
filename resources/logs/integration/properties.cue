package integration

import "strings"

#Properties: {
	// User provided identifier for integration, unique to the user account.
	IntegrationName: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(50)
	// The type of the Integration.
	IntegrationType: "OPENSEARCH"
	// OpenSearchResourceConfig for the given Integration
	ResourceConfig: {
		OpenSearchResourceConfig?: #OpenSearchResourceConfig
	}
}

#OpenSearchResourceConfig: {
	ApplicationARN?: #Arn
	DashboardViewerPrincipals: [...#Arn]
	DataSourceRoleArn: #Arn
	KmsKeyArn?: #Arn
	RetentionDays?: int & >=1 & <=3650
}
