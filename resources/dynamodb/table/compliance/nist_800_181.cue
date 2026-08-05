// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: table.#Resource & #T0008

// Guard rule: DYNAMODB_PITR_ENABLED
#T0008: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

