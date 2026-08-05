// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: bucketpolicy.#Resource & #AC_17_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#AC_17_2: {
	...
}

