// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: table.#Resource & #W78

// Guard rule: DYNAMODB_PITR_ENABLED
#W78: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

