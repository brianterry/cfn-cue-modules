// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: cluster.#Resource & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: PubliclyAccessible: false
	...
}

