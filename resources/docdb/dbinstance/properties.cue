package dbinstance

#Properties: {
	AutoMinorVersionUpgrade?: bool
	AvailabilityZone?: string
	CACertificateIdentifier?: string
	CertificateRotationRestart?: bool
	DBClusterIdentifier: string
	DBInstanceClass: string
	DBInstanceIdentifier?: string
	EnablePerformanceInsights?: bool
	PreferredMaintenanceWindow?: string
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
