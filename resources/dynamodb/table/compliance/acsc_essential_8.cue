// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: table.#Resource & #Mitigation_strategies_to_recover_data_and_system_availability

// Guard rule: DYNAMODB_PITR_ENABLED
#Mitigation_strategies_to_recover_data_and_system_availability: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

