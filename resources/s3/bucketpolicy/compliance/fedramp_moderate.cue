// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: bucketpolicy.#Resource & #AC_17_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_17_2: {
	...
}

