// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: loggroup.#Resource & #3_1_1_d & #3_1_10_b & #3_1_1_d_2

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#3_1_1_d: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#3_1_10_b: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#3_1_1_d_2: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

