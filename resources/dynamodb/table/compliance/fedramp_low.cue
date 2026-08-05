// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: table.#Resource & #CP_9

// Guard rule: DYNAMODB_PITR_ENABLED
#CP_9: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

