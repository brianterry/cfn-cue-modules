package cloudautonomousvmcluster

import "strings"

#Properties: {
	// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB.
	AutonomousDataStorageSizeInTBs?: number
	// The unique identifier of the Cloud Exadata Infrastructure containing this Autonomous VM cluster.
	CloudExadataInfrastructureId?: string
	// The number of CPU cores enabled per node in the Autonomous VM cluster.
	CpuCoreCountPerNode?: int
	// The list of database servers associated with the Autonomous VM cluster.
	DbServers?: [...string]
	// The user-provided description of the Autonomous VM cluster.
	Description?: string
	// The display name of the Autonomous VM cluster.
	DisplayName?: string & =~"^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster.
	IsMtlsEnabledVmCluster?: bool
	// The Oracle license model that applies to the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE.
	LicenseModel?: "BRING_YOUR_OWN_LICENSE" | "LICENSE_INCLUDED"
	// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window.
	MaintenanceWindow?: #MaintenanceWindow
	// The amount of memory allocated per Oracle Compute Unit, in GB.
	MemoryPerOracleComputeUnitInGBs?: int
	// The unique identifier of the ODB network associated with this Autonomous VM cluster.
	OdbNetworkId?: string
	// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521.
	ScanListenerPortNonTls?: int & >=1024 & <=8999
	// The SCAN listener port for TLS (TCP) protocol. The default is 2484.
	ScanListenerPortTls?: int & >=1024 & <=8999
	// The tags associated with the Autonomous VM cluster.
	Tags?: [...#Tag]
	// The time zone of the Autonomous VM cluster.
	TimeZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The total number of Autonomous Container Databases that can be created with the allocated local storage.
	TotalContainerDatabases?: int
}

#IamRole: {
	// The AWS integration configuration settings for the AWS Identity and Access Management (IAM) service role.
	AwsIntegration?: string
	// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role.
	IamRoleArn?: string
	// The current status of the AWS Identity and Access Management (IAM) service role.
	Status?: string
}

#MaintenanceWindow: {
	// The days of the week when maintenance can be performed.
	DaysOfWeek?: [..."MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY"]
	// The hours of the day when maintenance can be performed.
	HoursOfDay?: [...int]
	// The lead time in weeks before the maintenance window.
	LeadTimeInWeeks?: int
	// The months when maintenance can be performed.
	Months?: [..."JANUARY" | "FEBRUARY" | "MARCH" | "APRIL" | "MAY" | "JUNE" | "JULY" | "AUGUST" | "SEPTEMBER" | "OCTOBER" | "NOVEMBER" | "DECEMBER"]
	// The preference for the maintenance window scheduling.
	Preference?: "NO_PREFERENCE" | "CUSTOM_PREFERENCE"
	// The weeks of the month when maintenance can be performed.
	WeeksOfMonth?: [...int]
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, @, -, and ".
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
