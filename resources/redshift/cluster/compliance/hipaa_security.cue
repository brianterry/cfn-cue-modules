// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: cluster.#Resource & #ctrl_164_312_a_2_iv & #ctrl_164_308_a_5_ii_A & #ctrl_164_312_e_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_164_312_a_2_iv: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_164_308_a_5_ii_A: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_164_312_e_1: {
	Properties: EnhancedVpcRouting: true
	...
}

