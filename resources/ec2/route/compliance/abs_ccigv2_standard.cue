// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: route.#Resource & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

