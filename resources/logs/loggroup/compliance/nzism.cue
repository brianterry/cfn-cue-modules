// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nzism & { ... }
#nzism: loggroup.#Resource & #ctrl_2022 & #ctrl_1998

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_2022: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_1998: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

