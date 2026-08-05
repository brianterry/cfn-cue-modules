package application

import "strings"

#Properties: {
	// List of application configurations.
	AppConfigs?: [...#AppConfig]
	// List of data sources.
	DataSources?: [...#DataSource]
	// The endpoint for the application.
	Endpoint?: string
	// Options for configuring IAM Identity Center
	IamIdentityCenterOptions?: {
		Enabled?: bool
		IamIdentityCenterInstanceArn?: #Arn
		IamRoleForIdentityCenterApplicationArn?: string
	}
	// The ARN of the KMS key used to encrypt the application.
	KmsKeyArn?: string & =~"^arn:aws(-[a-z]+)*:kms:[a-z0-9-]+:\\d{12}:key/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The name of the application.
	Name: string & =~"[a-z][a-z0-9\\-]+" & strings.MinRunes(3) & strings.MaxRunes(40)
	// An arbitrary set of tags (key-value pairs) for this application.
	Tags?: [...#Tag]
}

#AppConfig: {
	// The configuration key
	Key: #AppConfigType
	// The configuration value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#AppConfigType: "opensearchDashboards.dashboardAdmin.users" | "opensearchDashboards.dashboardAdmin.groups"

#DataSource: {
	// The ARN of the data source.
	DataSourceArn: #Arn
	// Description of the data source.
	DataSourceDescription?: string
}

#Tag: {
	// The key in the key-value pair
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value in the key-value pair
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
