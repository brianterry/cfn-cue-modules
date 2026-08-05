// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: table.#Resource & #ctrl_3_13_2

// Guard rule: DYNAMODB_PITR_ENABLED
#ctrl_3_13_2: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

