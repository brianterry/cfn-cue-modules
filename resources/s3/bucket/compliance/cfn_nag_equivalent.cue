// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucket"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: bucket.#Resource & #W35 & #F14 & #W41

// Guard rule: S3_BUCKET_LOGGING_ENABLED
#W35: {
	Properties: LoggingConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_NO_PUBLIC_RW_ACL
#F14: {
	Properties: AccessControl: _  // != "PublicReadWrite"
	...
}

// Guard rule: S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
#W41: {
	Properties: BucketEncryption: _ & !=_|_
	Properties: BucketEncryption: ServerSideEncryptionConfiguration: [...{
		ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms" | "AES256"
		...
	}]
	...
}

