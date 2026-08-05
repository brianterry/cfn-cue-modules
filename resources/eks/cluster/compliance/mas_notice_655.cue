// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: cluster.#Resource & #4_4

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#4_4: {
	Properties: PubliclyAccessible: false
	...
}

