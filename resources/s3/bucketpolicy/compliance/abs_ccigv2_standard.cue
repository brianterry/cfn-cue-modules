// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: bucketpolicy.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	...
}

