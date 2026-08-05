// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: filesystem.#Resource & #500_02_a

// Guard rule: EFS_ENCRYPTED_CHECK
#500_02_a: {
	Properties: Encrypted: true
	...
}

