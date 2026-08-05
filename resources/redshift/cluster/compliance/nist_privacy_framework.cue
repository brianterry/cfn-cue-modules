// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: cluster.#Resource & #CT_DM_P8 & #PR_DS_P4 & #PR_AC_P3

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#CT_DM_P8: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#PR_DS_P4: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#PR_AC_P3: {
	Properties: EnhancedVpcRouting: true
	...
}

