// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: filesystem.#Resource & #F32

// Guard rule: EFS_ENCRYPTED_CHECK
#F32: {
	Properties: Encrypted: true
	...
}

