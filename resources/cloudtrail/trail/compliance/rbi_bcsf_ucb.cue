// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: trail.#Resource & #Annex_I_7_4 & #Annex_I_1_3

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#Annex_I_7_4: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#Annex_I_1_3: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

