// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#nerc & { ... }
#nerc: filesystem.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: EFS_ENCRYPTED_CHECK
#CIP_011_3_R1_Part_1_2: {
	Properties: Encrypted: true
	...
}

