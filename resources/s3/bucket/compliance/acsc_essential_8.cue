// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: bucket.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_prevent_malware_delivery_and_execution & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2 & #Mitigation_strategies_to_prevent_malware_delivery_and_execution_2 & #Mitigation_strategies_to_prevent_malware_delivery_and_execution_3 & #Regular_backups & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3 & #Regular_backups_2 & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_4

// Guard rule: S3_BUCKET_DEFAULT_LOCK_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: ObjectLockEnabled: _ & !=_|_
	Properties: ObjectLockEnabled: true
	...
}

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#Mitigation_strategies_to_prevent_malware_delivery_and_execution_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#Mitigation_strategies_to_prevent_malware_delivery_and_execution_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#Regular_backups: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#Regular_backups_2: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_4: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

