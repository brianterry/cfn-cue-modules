// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dynamodb/table"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: table.#Resource & #8_IX

// Guard rule: DYNAMODB_PITR_ENABLED
#8_IX: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

