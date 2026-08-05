// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: filesystem.#Resource & #AU_9_3

// Guard rule: EFS_ENCRYPTED_CHECK
#AU_9_3: {
	Properties: Encrypted: true
	...
}

