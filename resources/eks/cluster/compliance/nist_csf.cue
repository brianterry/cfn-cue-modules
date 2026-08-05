// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_csf & { ... }
#nist_csf: cluster.#Resource & #PR_AC_3

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#PR_AC_3: {
	Properties: PubliclyAccessible: false
	...
}

