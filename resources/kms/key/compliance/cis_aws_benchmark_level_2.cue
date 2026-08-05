// cis-aws-benchmark-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #cis_aws_benchmark_level_2 enforces all cis-aws-benchmark-level-2 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#cis_aws_benchmark_level_2 & { ... }
#cis_aws_benchmark_level_2: key.#Resource & #ctrl_3_8

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_3_8: {
	Properties: EnableKeyRotation: true
	...
}

