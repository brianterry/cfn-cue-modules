// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: filesystem.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: EFS_ENCRYPTED_CHECK
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: Encrypted: true
	...
}

