// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: loggroup.#Resource & #T0110 & #T0024

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#T0110: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#T0024: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

