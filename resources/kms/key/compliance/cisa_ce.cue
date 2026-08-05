// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: key.#Resource & #Your_Systems_3

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#Your_Systems_3: {
	Properties: EnableKeyRotation: true
	...
}

