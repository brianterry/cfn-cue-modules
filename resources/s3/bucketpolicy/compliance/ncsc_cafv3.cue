// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: bucketpolicy.#Resource & #B3_b_Data_in_Transit

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#B3_b_Data_in_Transit: {
	...
}

