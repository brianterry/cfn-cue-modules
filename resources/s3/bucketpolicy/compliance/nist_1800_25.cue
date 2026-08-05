// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: bucketpolicy.#Resource & #PR_DS_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#PR_DS_2: {
	...
}

