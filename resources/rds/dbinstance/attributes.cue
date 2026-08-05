package dbinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AutomaticRestartTime: string
	CertificateDetails: #CertificateDetails
	Endpoint: #Endpoint
	DbiResourceId: string
	DBInstanceArn: string
	DBInstanceStatus: string
	InstanceCreateTime: string
	IsStorageConfigUpgradeAvailable: bool
	LatestRestorableTime: string
	ListenerEndpoint: #Endpoint
	// The secret managed by RDS in AWS Secrets Manager for the master user password.
	// For more information, see [Password management with Secrets Manager](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html) in the *Amazon RDS User Guide.*
	MasterUserSecret: #MasterUserSecret
	PercentProgress: string
	ReadReplicaDBClusterIdentifiers: [...string]
	ReadReplicaDBInstanceIdentifiers: [...string]
	ResumeFullAutomationModeTime: string
	SecondaryAvailabilityZone: string
	StatusInfos: [...#DBInstanceStatusInfo]
}
