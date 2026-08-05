// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: bucketpolicy.#Resource & #AC_17

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_17: {
	...
}

