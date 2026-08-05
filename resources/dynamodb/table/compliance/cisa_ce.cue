// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: table.#Resource & #Your_Systems_3

// Guard rule: DYNAMODB_PITR_ENABLED
#Your_Systems_3: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

