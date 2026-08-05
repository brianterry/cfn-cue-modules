// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: table.#Resource & #Annex_I_12

// Guard rule: DYNAMODB_PITR_ENABLED
#Annex_I_12: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

