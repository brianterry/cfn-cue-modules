// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: table.#Resource & #ctrl_36l

// Guard rule: DYNAMODB_PITR_ENABLED
#ctrl_36l: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

