// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_csf & { ... }
#nist_csf: cluster.#Resource & #DE_AE_1 & #PR_DS_4 & #PR_AC_3

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#DE_AE_1: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#PR_DS_4: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#PR_AC_3: {
	Properties: EnhancedVpcRouting: true
	...
}

