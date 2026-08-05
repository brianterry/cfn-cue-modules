// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: filesystem.#Resource & #10_18

// Guard rule: EFS_ENCRYPTED_CHECK
#10_18: {
	Properties: Encrypted: true
	...
}

