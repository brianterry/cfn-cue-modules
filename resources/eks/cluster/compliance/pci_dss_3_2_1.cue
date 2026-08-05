// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: cluster.#Resource & #1_2

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#1_2: {
	Properties: PubliclyAccessible: false
	...
}

