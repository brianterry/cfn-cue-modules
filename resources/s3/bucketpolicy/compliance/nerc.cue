// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nerc & { ... }
#nerc: bucketpolicy.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#CIP_011_3_R1_Part_1_2: {
	...
}

