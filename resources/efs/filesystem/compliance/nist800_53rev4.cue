// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: filesystem.#Resource & #SC_13

// Guard rule: EFS_ENCRYPTED_CHECK
#SC_13: {
	Properties: Encrypted: true
	...
}

