// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: cluster.#Resource & #CIS_5 & #CIS_5_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#CIS_5: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#CIS_5_2: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

