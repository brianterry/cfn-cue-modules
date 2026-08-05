// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: filesystem.#Resource & #ctrl_459

// Guard rule: EFS_ENCRYPTED_CHECK
#ctrl_459: {
	Properties: Encrypted: true
	...
}

