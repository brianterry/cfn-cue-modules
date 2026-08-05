// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: cluster.#Resource & #Annex_I_1_3 & #Annex_I_6

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Annex_I_1_3: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#Annex_I_6: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

