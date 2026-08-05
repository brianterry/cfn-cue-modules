// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: loggroup.#Resource & #ctrl_500_14_a & #ctrl_500_02_a & #ctrl_500_06_b

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#ctrl_500_14_a: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_500_02_a: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_500_06_b: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

