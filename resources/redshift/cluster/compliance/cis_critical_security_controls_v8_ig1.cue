// cis-critical-security-controls-v8-ig1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #cis_critical_security_controls_v8_ig1 enforces all cis-critical-security-controls-v8-ig1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cis_critical_security_controls_v8_ig1 & { ... }
#cis_critical_security_controls_v8_ig1: cluster.#Resource & #ctrl_8_2 & #ctrl_4_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_8_2: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_4_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

