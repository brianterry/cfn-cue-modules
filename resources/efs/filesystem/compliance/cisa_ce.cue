// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: filesystem.#Resource & #Your_Systems_3

// Guard rule: EFS_ENCRYPTED_CHECK
#Your_Systems_3: {
	Properties: Encrypted: true
	...
}

