// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#ens_high & { ... }
#ens_high: table.#Resource & #Art__25

// Guard rule: DYNAMODB_PITR_ENABLED
#Art__25: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

