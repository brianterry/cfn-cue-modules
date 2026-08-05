// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nerc & { ... }
#nerc: trail.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#CIP_011_3_R1_Part_1_2: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

