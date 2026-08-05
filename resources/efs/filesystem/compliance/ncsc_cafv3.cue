// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: filesystem.#Resource & #B3_c Stored Data

// Guard rule: EFS_ENCRYPTED_CHECK
#B3_c Stored Data: {
	Properties: Encrypted: true
	...
}

