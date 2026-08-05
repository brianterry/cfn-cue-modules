// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nist_csf & { ... }
#nist_csf: table.#Resource & #ID_BE_5

// Guard rule: DYNAMODB_PITR_ENABLED
#ID_BE_5: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

