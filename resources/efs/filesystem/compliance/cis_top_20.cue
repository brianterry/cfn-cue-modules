// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: filesystem.#Resource & #CIS_13

// Guard rule: EFS_ENCRYPTED_CHECK
#CIS_13: {
	Properties: Encrypted: true
	...
}

