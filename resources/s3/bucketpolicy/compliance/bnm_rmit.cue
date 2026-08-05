// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: bucketpolicy.#Resource & #ctrl_10_18

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#ctrl_10_18: {
	...
}

