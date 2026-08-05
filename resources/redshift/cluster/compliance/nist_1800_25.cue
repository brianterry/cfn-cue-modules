// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: cluster.#Resource & #PR_DS_1 & #PR_IP_1 & #PR_AC_3

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#PR_DS_1: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#PR_IP_1: {
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

