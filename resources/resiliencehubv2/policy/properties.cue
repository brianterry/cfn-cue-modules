package policy

import "strings"

#Properties: {
	AvailabilitySlo?: #AvailabilitySlo
	DataRecovery?: #DataRecoveryTargets
	// The description of the policy.
	Description?: string & strings.MaxRunes(615)
	// The KMS key ID for encrypting policy data.
	KmsKeyId?: string & =~"^((arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)))|([a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+))$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	MultiAz?: #MultiAzTargets
	MultiRegion?: #MultiRegionTargets
	// The name of the policy.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	// Tags assigned to the policy.
	Tags?: [...#Tag]
}

#AvailabilitySlo: {
	// Availability target percentage.
	Target?: number & >=0 & <=100
}

#DataRecoveryTargets: {
	// Time between backups in minutes.
	TimeBetweenBackupsInMinutes?: int & >=0
}

#MultiAzTargets: {
	// Multi-AZ disaster recovery approach.
	DisasterRecoveryApproach?: "ACTIVE_ACTIVE" | "HOT_STANDBY" | "WARM_STANDBY" | "PILOT_LIGHT" | "BACKUP_AND_RESTORE"
	// Recovery Point Objective in minutes.
	RpoInMinutes?: int & >=0 & <=2147483647
	// Recovery Time Objective in minutes.
	RtoInMinutes?: int & >=0 & <=2147483647
}

#MultiRegionTargets: {
	// Multi-Region disaster recovery approach.
	DisasterRecoveryApproach?: "ACTIVE_ACTIVE" | "HOT_STANDBY" | "WARM_STANDBY" | "PILOT_LIGHT" | "BACKUP_AND_RESTORE"
	// Recovery Point Objective in minutes.
	RpoInMinutes?: int & >=0 & <=2147483647
	// Recovery Time Objective in minutes.
	RtoInMinutes?: int & >=0 & <=2147483647
}

#Tag: {
	// The tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
