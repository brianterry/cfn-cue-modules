// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#ens_medium & { ... }
#ens_medium: bucket.#Resource & #Anexo_II_4_1_2_a;_b;_c & #Anexo_II_4_3_2_b & #Anexo_II_4_2_6_c & #Anexo_II_4_3_2_b_2 & #Anexo_II_4_3_2_b_3 & #Anexo_II_4_3_10_d & #Anexo_II_4_1_2_a;_b;_c_2 & #Art__25 & #Anexo_II_4_1_2_a;_b;_c_3

// Guard rule: S3_BUCKET_DEFAULT_LOCK_ENABLED
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: ObjectLockEnabled: _ & !=_|_
	Properties: ObjectLockEnabled: true
	...
}

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#Anexo_II_4_3_2_b: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#Anexo_II_4_3_2_b_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#Anexo_II_4_3_2_b_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#Anexo_II_4_3_10_d: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#Anexo_II_4_1_2_a;_b;_c_2: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#Art__25: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

// Guard rule: S3_DEFAULT_ENCRYPTION_KMS
#Anexo_II_4_1_2_a;_b;_c_3: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

