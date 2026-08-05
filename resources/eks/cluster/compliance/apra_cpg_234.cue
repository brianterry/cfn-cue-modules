// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: cluster.#Resource & #ctrl_36d

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_36d: {
	Properties: PubliclyAccessible: false
	...
}

