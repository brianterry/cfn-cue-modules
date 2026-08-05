// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: dbinstance.#Resource & #Annex_I_6 & #Annex_I_1_3 & #Annex_I_7_4

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#Annex_I_6: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#Annex_I_1_3: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#Annex_I_7_4: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

