// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: bucketpolicy.#Resource & #ctrl_3_1_3e

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#ctrl_3_1_3e: {
	...
}

