// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: cluster.#Resource & #T0017

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#T0017: {
	Properties: PubliclyAccessible: false
	...
}

