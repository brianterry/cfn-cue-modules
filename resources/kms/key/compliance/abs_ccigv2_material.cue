// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: key.#Resource & #section4b_design_and_secure_the_cloud_5_material_workloads

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#section4b_design_and_secure_the_cloud_5_material_workloads: {
	Properties: EnableKeyRotation: true
	...
}

