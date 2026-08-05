// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: table.#Resource & #RE_2_137

// Guard rule: DYNAMODB_PITR_ENABLED
#RE_2_137: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

