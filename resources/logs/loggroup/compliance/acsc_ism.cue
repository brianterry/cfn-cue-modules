// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: loggroup.#Resource & #586 & #859

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#586: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#859: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

