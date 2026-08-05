// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nist_csf & { ... }
#nist_csf: filesystem.#Resource & #PR_DS_1

// Guard rule: EFS_ENCRYPTED_CHECK
#PR_DS_1: {
	Properties: Encrypted: true
	...
}

