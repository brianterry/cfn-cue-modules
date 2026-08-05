// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: key.#Resource & #ctrl_6_4_5

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_6_4_5: {
	Properties: EnableKeyRotation: true
	...
}

