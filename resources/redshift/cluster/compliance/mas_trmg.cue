// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: cluster.#Resource & #ctrl_6_4_6 & #ctrl_7_4_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_6_4_6: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_7_4_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

