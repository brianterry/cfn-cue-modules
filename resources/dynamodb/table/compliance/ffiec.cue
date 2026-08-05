// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#ffiec & { ... }
#ffiec: table.#Resource & #D5_IR_Pl_B_6

// Guard rule: DYNAMODB_PITR_ENABLED
#D5_IR_Pl_B_6: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

