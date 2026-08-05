// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: bucket.#Resource & #T0017 & #T0154 & #T0017_2 & #T0017_3 & #T0008 & #T0017_4 & #T0017_5 & #T0017_6

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#T0017: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#T0154: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#T0017_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#T0017_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#T0008: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#T0017_4: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#T0017_5: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#T0017_6: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

