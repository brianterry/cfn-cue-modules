// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: cluster.#Resource & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: PubliclyAccessible: false
	...
}

