// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: bucketpolicy.#Resource & #SC_1_175

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#SC_1_175: {
	...
}

