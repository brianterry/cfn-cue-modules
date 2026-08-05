// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: cluster.#Resource & #CM_2_064

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#CM_2_064: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

