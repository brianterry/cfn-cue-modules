// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: bucketpolicy.#Resource & #3_1_i

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#3_1_i: {
	...
}

