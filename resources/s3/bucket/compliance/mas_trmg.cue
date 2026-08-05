// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucket"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: bucket.#Resource & #ctrl_11_1_1_b & #ctrl_6_4_6 & #ctrl_11_1_1_b_2 & #ctrl_11_1_1_b_3 & #ctrl_7_5_5 & #ctrl_10_1_1 & #ctrl_7_5_5_2 & #ctrl_10_1_1_2

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#ctrl_11_1_1_b: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#ctrl_6_4_6: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#ctrl_11_1_1_b_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#ctrl_11_1_1_b_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#ctrl_7_5_5: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#ctrl_10_1_1: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#ctrl_7_5_5_2: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#ctrl_10_1_1_2: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

