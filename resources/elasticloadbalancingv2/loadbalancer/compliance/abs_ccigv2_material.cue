// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: loadbalancer.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads & #section4b_design_and_secure_the_cloud_3_material_workloads

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#section4b_design_and_secure_the_cloud_3_material_workloads: {
	// No clauses extracted — manual review needed
	...
}

