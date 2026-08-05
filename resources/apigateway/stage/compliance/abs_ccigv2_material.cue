// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: stage.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

