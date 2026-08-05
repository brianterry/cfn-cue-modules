// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: loadbalancer.#Resource & #section4b_design_and_secure_the_cloud_3_material_workloads & #section4b_design_and_secure_the_cloud_11_material_workloads & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#section4b_design_and_secure_the_cloud_3_material_workloads: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#section4b_design_and_secure_the_cloud_11_material_workloads: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

