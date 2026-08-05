// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: filesystem.#Resource & #T0017

// Guard rule: EFS_ENCRYPTED_CHECK
#T0017: {
	Properties: Encrypted: true
	...
}

