// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: table.#Resource & #PR_IP_4

// Guard rule: DYNAMODB_PITR_ENABLED
#PR_IP_4: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

