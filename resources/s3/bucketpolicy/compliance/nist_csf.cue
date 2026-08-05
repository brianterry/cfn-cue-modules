// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_csf & { ... }
#nist_csf: bucketpolicy.#Resource & #PR_DS_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#PR_DS_2: {
	...
}

