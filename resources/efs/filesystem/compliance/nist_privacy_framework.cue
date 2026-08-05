// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: filesystem.#Resource & #PR_DS_P1

// Guard rule: EFS_ENCRYPTED_CHECK
#PR_DS_P1: {
	Properties: Encrypted: true
	...
}

