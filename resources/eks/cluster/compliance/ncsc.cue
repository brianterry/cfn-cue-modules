// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc & { ... }
#ncsc: cluster.#Resource & #ctrl_11__External_interface_protection

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_11__External_interface_protection: {
	Properties: PubliclyAccessible: false
	...
}

