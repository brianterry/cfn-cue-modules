// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: loggroup.#Resource & #2_9_2 & #2_7 & #2_9_4

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#2_9_2: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#2_7: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#2_9_4: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

