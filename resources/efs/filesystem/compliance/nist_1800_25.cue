// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: filesystem.#Resource & #PR_DS_1

// Guard rule: EFS_ENCRYPTED_CHECK
#PR_DS_1: {
	Properties: Encrypted: true
	...
}

