// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: bucket.#Resource & #AC_1_001 & #IA_1_076 & #AC_1_001_2 & #AC_1_001_3

// Guard rule: S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED
#AC_1_001: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#IA_1_076: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_PUBLIC_READ_PROHIBITED
#AC_1_001_2: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

// Guard rule: S3_BUCKET_PUBLIC_WRITE_PROHIBITED
#AC_1_001_3: {
	Properties: PublicAccessBlockConfiguration: _ & !=_|_
	Properties: PublicAccessBlockConfiguration: BlockPublicAcls: true
	Properties: PublicAccessBlockConfiguration: BlockPublicPolicy: true
	Properties: PublicAccessBlockConfiguration: IgnorePublicAcls: true
	Properties: PublicAccessBlockConfiguration: RestrictPublicBuckets: true
	...
}

