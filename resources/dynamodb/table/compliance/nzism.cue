// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nzism & { ... }
#nzism: table.#Resource & #4849

// Guard rule: DYNAMODB_PITR_ENABLED
#4849: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

