// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: cluster.#Resource & #ctrl_3_1_1

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_3_1_1: {
	Properties: PubliclyAccessible: false
	...
}

