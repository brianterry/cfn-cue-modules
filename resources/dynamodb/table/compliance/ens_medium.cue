// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#ens_medium & { ... }
#ens_medium: table.#Resource & #Art__25

// Guard rule: DYNAMODB_PITR_ENABLED
#Art__25: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

