// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: loggroup.#Resource & #164_312_b & #164_312_a_2_iv & #164_312_b_2

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#164_312_b: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#164_312_a_2_iv: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#164_312_b_2: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

