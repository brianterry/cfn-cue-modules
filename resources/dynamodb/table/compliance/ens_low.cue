// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#ens_low & { ... }
#ens_low: table.#Resource & #Art__25

// Guard rule: DYNAMODB_PITR_ENABLED
#Art__25: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

