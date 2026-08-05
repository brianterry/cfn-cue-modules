// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: table.#Resource & #164_308_a_7_i

// Guard rule: DYNAMODB_PITR_ENABLED
#164_308_a_7_i: {
	Properties: PointInTimeRecoverySpecification: PointInTimeRecoveryEnabled: true
	...
}

