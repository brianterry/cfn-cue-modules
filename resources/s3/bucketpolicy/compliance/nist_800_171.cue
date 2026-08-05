// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: bucketpolicy.#Resource & #3_1_13

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#3_1_13: {
	...
}

