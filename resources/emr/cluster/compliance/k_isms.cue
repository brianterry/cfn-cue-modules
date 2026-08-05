// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: cluster.#Resource & #2_5_1

// Guard rule: EMR_KERBEROS_ENABLED
#2_5_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

