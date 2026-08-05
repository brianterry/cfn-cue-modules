// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nzism & { ... }
#nzism: filesystem.#Resource & #2082

// Guard rule: EFS_ENCRYPTED_CHECK
#2082: {
	Properties: Encrypted: true
	...
}

