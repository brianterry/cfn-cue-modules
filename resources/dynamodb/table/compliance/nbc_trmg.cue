// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: table.#Resource & #3_2_1_h

// Guard rule: DYNAMODB_PITR_ENABLED
#3_2_1_h: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

