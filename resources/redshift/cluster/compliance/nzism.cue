// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nzism & { ... }
#nzism: cluster.#Resource & #4441 & #3449

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#4441: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#3449: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

