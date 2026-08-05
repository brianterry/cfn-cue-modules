package featuregroup

import "strings"

#Properties: {
	// Description about the FeatureGroup.
	Description?: string & strings.MaxRunes(128)
	// The Event Time Feature Name.
	EventTimeFeatureName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,63}" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An Array of Feature Definition
	FeatureDefinitions: [...#FeatureDefinition]
	// The Name of the FeatureGroup.
	FeatureGroupName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,63}" & strings.MinRunes(1) & strings.MaxRunes(64)
	OfflineStoreConfig?: {
		DataCatalogConfig?: #DataCatalogConfig
		DisableGlueTableCreation?: bool
		S3StorageConfig: #S3StorageConfig
		TableFormat?: #TableFormat
	}
	OnlineStoreConfig?: {
		EnableOnlineStore?: bool
		SecurityConfig?: #OnlineStoreSecurityConfig
		StorageType?: #StorageType
		TtlDuration?: #TtlDuration
	}
	// The Record Identifier Feature Name.
	RecordIdentifierFeatureName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,63}" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Role Arn
	RoleArn?: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// An array of key-value pair to apply to this resource.
	Tags?: [...#Tag]
	ThroughputConfig?: #ThroughputConfig
}

#DataCatalogConfig: {
	Catalog: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Database: string & strings.MinRunes(1) & strings.MaxRunes(255)
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#FeatureDefinition: {
	FeatureName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,63}" & strings.MinRunes(1) & strings.MaxRunes(64)
	FeatureType: "Integral" | "Fractional" | "String"
}

#KmsKeyId: string & strings.MaxRunes(2048)

#OnlineStoreSecurityConfig: {
	KmsKeyId?: #KmsKeyId
}

#S3StorageConfig: {
	KmsKeyId?: #KmsKeyId
	S3Uri: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(1024)
}

#StorageType: "Standard" | "InMemory"

#TableFormat: "Iceberg" | "Glue"

#Tag: {
	Key: string
	Value: string
}

#ThroughputConfig: {
	// For provisioned feature groups with online store enabled, this indicates the read throughput you are billed for and can consume without throttling.
	ProvisionedReadCapacityUnits?: int
	// For provisioned feature groups, this indicates the write throughput you are billed for and can consume without throttling.
	ProvisionedWriteCapacityUnits?: int
	ThroughputMode: #ThroughputMode
}

#ThroughputMode: "OnDemand" | "Provisioned"

#TtlDuration: {
	Unit?: #Unit
	Value?: #Value
}

#Unit: "Seconds" | "Minutes" | "Hours" | "Days" | "Weeks"

#Value: int
