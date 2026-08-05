// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: table.#Resource & #500_02_b_5

// Guard rule: DYNAMODB_PITR_ENABLED
#500_02_b_5: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

