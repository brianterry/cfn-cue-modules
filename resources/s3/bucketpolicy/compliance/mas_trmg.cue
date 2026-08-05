// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: bucketpolicy.#Resource & #6_4_5

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#6_4_5: {
	...
}

