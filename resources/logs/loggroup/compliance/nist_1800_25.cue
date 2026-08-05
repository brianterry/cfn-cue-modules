// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: loggroup.#Resource & #PR_PT_1 & #PR_DS_1 & #PR_PT_1_2

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#PR_PT_1: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#PR_PT_1_2: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

