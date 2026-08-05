// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: bucket.#Resource & #11_1_1__b & #6_4_6 & #11_1_1__b_2 & #11_1_1__b_3 & #7_5_5 & #10_1_1 & #7_5_5_2 & #10_1_1_2

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#11_1_1__b: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#6_4_6: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#11_1_1__b_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#11_1_1__b_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#7_5_5: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#10_1_1: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#7_5_5_2: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#10_1_1_2: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

