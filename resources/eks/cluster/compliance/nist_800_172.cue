// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: cluster.#Resource & #ctrl_3_1_3e

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_3_1_3e: {
	Properties: PubliclyAccessible: false
	...
}

