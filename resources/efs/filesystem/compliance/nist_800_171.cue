// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: filesystem.#Resource & #3_13_16

// Guard rule: EFS_ENCRYPTED_CHECK
#3_13_16: {
	Properties: Encrypted: true
	...
}

