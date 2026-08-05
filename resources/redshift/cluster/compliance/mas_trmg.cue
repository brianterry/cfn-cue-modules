// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: cluster.#Resource & #6_4_6 & #7_4_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#6_4_6: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#7_4_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

