// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: filesystem.#Resource & #10_1_1

// Guard rule: EFS_ENCRYPTED_CHECK
#10_1_1: {
	Properties: Encrypted: true
	...
}

