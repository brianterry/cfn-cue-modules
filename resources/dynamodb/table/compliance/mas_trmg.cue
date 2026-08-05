// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: table.#Resource & #ctrl_7_5_5

// Guard rule: DYNAMODB_PITR_ENABLED
#ctrl_7_5_5: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

