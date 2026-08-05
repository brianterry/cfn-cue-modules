// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: filesystem.#Resource & #ctrl_2_7

// Guard rule: EFS_ENCRYPTED_CHECK
#ctrl_2_7: {
	Properties: Encrypted: true
	...
}

