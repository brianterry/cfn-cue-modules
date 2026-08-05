// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nzism & { ... }
#nzism: table.#Resource & #ctrl_4849

// Guard rule: DYNAMODB_PITR_ENABLED
#ctrl_4849: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

