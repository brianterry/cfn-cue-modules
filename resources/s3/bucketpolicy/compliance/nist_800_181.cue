// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: bucketpolicy.#Resource & #T0017

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#T0017: {
	...
}

