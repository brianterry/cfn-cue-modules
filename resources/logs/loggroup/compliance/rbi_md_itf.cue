// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: loggroup.#Resource & #ctrl_3_1_h

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_3_1_h: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

