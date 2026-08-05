// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: bucketpolicy.#Resource & #AC_4

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_4: {
	...
}

