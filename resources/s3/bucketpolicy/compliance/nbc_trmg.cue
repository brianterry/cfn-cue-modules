// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: bucketpolicy.#Resource & #3_1_2_c

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#3_1_2_c: {
	...
}

