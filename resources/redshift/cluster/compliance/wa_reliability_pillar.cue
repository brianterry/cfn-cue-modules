// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: cluster.#Resource & #REL_8

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#REL_8: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

