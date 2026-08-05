// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: filesystem.#Resource & #3_1_1_h

// Guard rule: EFS_ENCRYPTED_CHECK
#3_1_1_h: {
	Properties: Encrypted: true
	...
}

