// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: loggroup.#Resource & #W84 & #W86

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#W84: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#W86: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

