// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: cluster.#Resource & #ctrl_3_1_2_c

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_3_1_2_c: {
	Properties: PubliclyAccessible: false
	...
}

