// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: cluster.#Resource & #CM_2_064

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#CM_2_064: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

