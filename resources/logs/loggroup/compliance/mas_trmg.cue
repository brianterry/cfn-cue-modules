// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: loggroup.#Resource & #ctrl_10_1_1 & #ctrl_6_4_7

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_10_1_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_6_4_7: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

