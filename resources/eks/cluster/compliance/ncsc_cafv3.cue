// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: cluster.#Resource & #B3_b Data in Transit

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#B3_b Data in Transit: {
	Properties: PubliclyAccessible: false
	...
}

