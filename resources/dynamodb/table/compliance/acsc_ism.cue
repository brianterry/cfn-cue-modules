// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: table.#Resource & #1511

// Guard rule: DYNAMODB_PITR_ENABLED
#1511: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

