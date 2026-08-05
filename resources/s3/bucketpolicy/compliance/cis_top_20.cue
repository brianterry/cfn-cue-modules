// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: bucketpolicy.#Resource & #CIS_13

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#CIS_13: {
	...
}

