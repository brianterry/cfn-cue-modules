// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: cluster.#Resource & #ctrl_3_1_h & #ctrl_3_3

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_3_1_h: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_3_3: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

