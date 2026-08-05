// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: cluster.#Resource & #500_02_a

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#500_02_a: {
	Properties: Encrypted: true
	...
}

