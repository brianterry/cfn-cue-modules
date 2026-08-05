package organizationcentralizationrule

import "strings"

#Properties: {
	Rule: #CentralizationRule
	RuleName: string & =~"^[0-9A-Za-z-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CentralizationRule: {
	Destination: #CentralizationRuleDestination
	Source: #CentralizationRuleSource
}

#CentralizationRuleDestination: {
	Account?: #AccountIdentifier
	DestinationLogsConfiguration?: #DestinationLogsConfiguration
	DestinationMetricsConfiguration?: #DestinationMetricsConfiguration
	Region: #Region
}

#CentralizationRuleSource: {
	Regions: #Regions
	Scope?: string & strings.MinRunes(1) & strings.MaxRunes(2000)
	SourceLogsConfiguration?: #SourceLogsConfiguration
	SourceMetricsConfiguration?: #SourceMetricsConfiguration
}

#DestinationLogsConfiguration: {
	BackupConfiguration?: #LogsBackupConfiguration
	LogGroupNameConfiguration?: #LogGroupNameConfiguration
	LogsEncryptionConfiguration?: #LogsEncryptionConfiguration
}

#DestinationMetricsConfiguration: {
	BackupConfiguration?: #MetricsBackupConfiguration
}

#LogGroupNameConfiguration: {
	LogGroupNamePattern: string & =~"^(?:[\\._\\-/#A-Za-z0-9]+|\\$\\{[A-Za-z]+(?:\\.[A-Za-z]+){1,2}\\})+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#LogsBackupConfiguration: {
	KmsKeyArn?: #ResourceArn
	Region: #Region
}

#LogsEncryptionConfiguration: {
	EncryptionConflictResolutionStrategy?: "ALLOW" | "SKIP"
	EncryptionStrategy: "CUSTOMER_MANAGED" | "AWS_OWNED"
	KmsKeyArn?: #ResourceArn
}

#MetricsBackupConfiguration: {
	Region: #Region
}

#SourceLogsConfiguration: {
	DataSourceSelectionCriteria?: string & strings.MinRunes(1) & strings.MaxRunes(2000)
	EncryptedLogGroupStrategy: "ALLOW" | "SKIP"
	LogGroupSelectionCriteria?: string & strings.MinRunes(1) & strings.MaxRunes(2000)
}

#SourceMetricsConfiguration: {
	MetricsSelectionCriteria?: string & strings.MinRunes(1) & strings.MaxRunes(2000)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
