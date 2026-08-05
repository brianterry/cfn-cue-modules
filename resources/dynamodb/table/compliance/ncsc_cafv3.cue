// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: table.#Resource & #B3_c_Stored_Data

// Guard rule: DYNAMODB_PITR_ENABLED
#B3_c_Stored_Data: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

