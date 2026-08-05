// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: cluster.#Resource & #ctrl_164_308_a_3_i

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_164_308_a_3_i: {
	Properties: PubliclyAccessible: false
	...
}

