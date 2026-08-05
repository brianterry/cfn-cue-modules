// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: bucketpolicy.#Resource & #AC_3_014

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_3_014: {
	...
}

