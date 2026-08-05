// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: cluster.#Resource & #11_10_c

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#11_10_c: {
	Properties: PubliclyAccessible: false
	...
}

