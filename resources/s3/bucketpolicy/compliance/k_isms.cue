// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: bucketpolicy.#Resource & #2_7

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#2_7: {
	...
}

