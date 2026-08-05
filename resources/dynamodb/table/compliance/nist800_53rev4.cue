// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: table.#Resource & #CP_9_b

// Guard rule: DYNAMODB_PITR_ENABLED
#CP_9_b: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

