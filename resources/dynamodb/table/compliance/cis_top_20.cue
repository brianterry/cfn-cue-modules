// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: table.#Resource & #CIS_10

// Guard rule: DYNAMODB_PITR_ENABLED
#CIS_10: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

