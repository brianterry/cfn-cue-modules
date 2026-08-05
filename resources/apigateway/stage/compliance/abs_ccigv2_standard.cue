// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: stage.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

