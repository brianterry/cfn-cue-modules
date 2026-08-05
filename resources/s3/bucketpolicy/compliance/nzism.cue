// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nzism & { ... }
#nzism: bucketpolicy.#Resource & #4839

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#4839: {
	...
}

