// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: cluster.#Resource & #ctrl_52c & #ctrl_36b & #ctrl_36d

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_52c: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_36b: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_36d: {
	Properties: EnhancedVpcRouting: true
	...
}

