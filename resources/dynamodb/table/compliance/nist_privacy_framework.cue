// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: table.#Resource & #PR_DS_P4

// Guard rule: DYNAMODB_PITR_ENABLED
#PR_DS_P4: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

