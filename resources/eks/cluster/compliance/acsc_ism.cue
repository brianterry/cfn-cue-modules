// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: cluster.#Resource & #1528

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#1528: {
	Properties: PubliclyAccessible: false
	...
}

