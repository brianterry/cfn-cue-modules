// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: loggroup.#Resource & #Annex_I_1_3 & #Annex_I_7_4

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#Annex_I_1_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#Annex_I_7_4: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

