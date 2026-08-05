// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: table.#Resource & #CP_1_2

// Guard rule: DYNAMODB_PITR_ENABLED
#CP_1_2: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

