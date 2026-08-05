// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: table.#Resource & #REL_9

// Guard rule: DYNAMODB_PITR_ENABLED
#REL_9: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

