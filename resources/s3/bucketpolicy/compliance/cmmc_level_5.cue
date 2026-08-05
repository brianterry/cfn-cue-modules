// cmmc-level-5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #cmmc_level_5 enforces all cmmc-level-5 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cmmc_level_5 & { ... }
#cmmc_level_5: bucketpolicy.#Resource & #AC_3_014

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_3_014: {
	...
}

