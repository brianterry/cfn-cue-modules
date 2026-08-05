// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#ffiec & { ... }
#ffiec: bucketpolicy.#Resource & #D3_PC_Am_B_12

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#D3_PC_Am_B_12: {
	...
}

