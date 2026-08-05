// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: cluster.#Resource & #8_I

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#8_I: {
	Properties: PubliclyAccessible: false
	...
}

