// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: cluster.#Resource & #PR_AC_P3

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#PR_AC_P3: {
	Properties: PubliclyAccessible: false
	...
}

