package detector

import "strings"

#Properties: {
	DataSources?: #CFNDataSourceConfigurations
	Enable: bool
	Features?: [...#CFNFeatureConfiguration]
	FindingPublishingFrequency?: string
	Tags?: [...#TagItem]
}

#CFNDataSourceConfigurations: {
	Kubernetes?: #CFNKubernetesConfiguration
	MalwareProtection?: #CFNMalwareProtectionConfiguration
	S3Logs?: #CFNS3LogsConfiguration
}

#CFNFeatureAdditionalConfiguration: {
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Status?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#CFNFeatureConfiguration: {
	AdditionalConfiguration?: [...#CFNFeatureAdditionalConfiguration]
	Name: string & strings.MaxRunes(128)
	Status: "ENABLED" | "DISABLED"
}

#CFNKubernetesAuditLogsConfiguration: {
	Enable: bool
}

#CFNKubernetesConfiguration: {
	AuditLogs: #CFNKubernetesAuditLogsConfiguration
}

#CFNMalwareProtectionConfiguration: {
	ScanEc2InstanceWithFindings?: #CFNScanEc2InstanceWithFindingsConfiguration
}

#CFNS3LogsConfiguration: {
	Enable: bool
}

#CFNScanEc2InstanceWithFindingsConfiguration: {
	EbsVolumes?: bool
}

#TagItem: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
