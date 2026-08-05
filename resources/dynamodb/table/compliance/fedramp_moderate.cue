// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: table.#Resource & #CP_9_b

// Guard rule: DYNAMODB_PITR_ENABLED
#CP_9_b: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

