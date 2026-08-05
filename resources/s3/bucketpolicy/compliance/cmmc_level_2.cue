// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: bucketpolicy.#Resource & #IA_2_081

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#IA_2_081: {
	...
}

