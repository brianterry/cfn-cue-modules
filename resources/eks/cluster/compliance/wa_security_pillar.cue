// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: cluster.#Resource & #SEC_3_7

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#SEC_3_7: {
	Properties: PubliclyAccessible: false
	...
}

