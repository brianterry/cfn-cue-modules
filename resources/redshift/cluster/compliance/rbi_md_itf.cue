// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: cluster.#Resource & #3_1_h & #3_3

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#3_1_h: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#3_3: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

