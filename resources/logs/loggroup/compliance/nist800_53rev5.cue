// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: loggroup.#Resource & #AU_6_1 & #AU_9_3 & #AC_16b

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#AU_6_1: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#AU_9_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#AC_16b: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

