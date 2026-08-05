// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nzism & { ... }
#nzism: cluster.#Resource & #ctrl_4441 & #ctrl_3449

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_4441: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_3449: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

