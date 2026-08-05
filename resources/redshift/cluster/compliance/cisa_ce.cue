// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: cluster.#Resource & #Your_Systems_3 & #Your_Systems_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Your_Systems_3: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#Your_Systems_2: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

