// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: table.#Resource & #11_2

// Guard rule: DYNAMODB_PITR_ENABLED
#11_2: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

