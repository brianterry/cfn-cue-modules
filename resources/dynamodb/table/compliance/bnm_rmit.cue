// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: table.#Resource & #10_66_e

// Guard rule: DYNAMODB_PITR_ENABLED
#10_66_e: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

