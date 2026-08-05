// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#ncsc & { ... }
#ncsc: bucketpolicy.#Resource & #ctrl_1_Data_in_transit_protection

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#ctrl_1_Data_in_transit_protection: {
	...
}

