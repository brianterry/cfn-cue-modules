// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: cluster.#Resource & #ctrl_2_7 & #ctrl_2_9_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_2_7: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_2_9_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

