// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucket"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#ncsc & { ... }
#ncsc: bucket.#Resource & #ctrl_2_Asset_protection_and_resilience & #ctrl_5_Operational_security & #ctrl_2_Asset_protection_and_resilience_2 & #ctrl_2_Asset_protection_and_resilience_3 & #ctrl_2_Asset_protection_and_resilience_4 & #ctrl_2_Asset_protection_and_resilience_5 & #ctrl_2_Asset_protection_and_resilience_6 & #ctrl_2_Asset_protection_and_resilience_7

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#ctrl_2_Asset_protection_and_resilience: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#ctrl_5_Operational_security: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#ctrl_2_Asset_protection_and_resilience_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#ctrl_2_Asset_protection_and_resilience_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#ctrl_2_Asset_protection_and_resilience_4: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#ctrl_2_Asset_protection_and_resilience_5: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#ctrl_2_Asset_protection_and_resilience_6: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#ctrl_2_Asset_protection_and_resilience_7: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

