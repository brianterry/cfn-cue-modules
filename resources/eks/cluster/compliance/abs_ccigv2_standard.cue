// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: cluster.#Resource & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: PubliclyAccessible: false
	...
}

